#!/usr/bin/env pwsh
# Build data/repos.json from curated entries + live GitHub API metadata.
# Requires an authenticated gh CLI (installed portably at E:\tools\gh in this workspace).

param(
    [string]$GhExe = 'E:\tools\gh\bin\gh.exe',
    [string]$CollectionDate = '2026-11-02'
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$curation = Get-Content (Join-Path $root 'data/curation.json') -Raw | ConvertFrom-Json

$allowed = @('MIT','Apache-2.0','BSD-2-Clause','BSD-3-Clause','ISC','MPL-2.0','CC0-1.0','CC-BY-4.0','OFL-1.1','0BSD')
$built = @()
$rejected = @()

foreach ($item in $curation) {
    $jq = '{stars: .stargazers_count, license: .license.spdx_id, archived: .archived, description: .description, homepage: .homepage, owner: .owner.login}'
    $raw = $null
    for ($attempt = 1; $attempt -le 3; $attempt++) {
        $raw = & $GhExe api "repos/$($item.repo)" --jq $jq 2>&1
        if ($LASTEXITCODE -eq 0) { break }
        Start-Sleep -Seconds (2 * $attempt)
    }
    if ($LASTEXITCODE -ne 0) {
        $rejected += [pscustomobject]@{ repo = $item.repo; reason = "gh api failed: $raw" }
        continue
    }
    $meta = $raw | ConvertFrom-Json

    if ($meta.archived) { $rejected += [pscustomobject]@{ repo = $item.repo; reason = 'archived' }; continue }
    if ($meta.stars -lt 3000) { $rejected += [pscustomobject]@{ repo = $item.repo; reason = "stars below 3000 ($($meta.stars))" }; continue }

    $license = if ($item.PSObject.Properties.Name -contains 'licenseOverride' -and $item.licenseOverride) { $item.licenseOverride } else { $meta.license }
    if ([string]::IsNullOrWhiteSpace($license) -or $license -eq 'NOASSERTION' -or $license -eq 'Other' -or $allowed -notcontains $license) {
        $rejected += [pscustomobject]@{ repo = $item.repo; reason = "license not accepted ($license)" }
        continue
    }

    $built += [ordered]@{
        name        = $item.name
        slug        = $item.slug
        repo        = $item.repo
        url         = "https://github.com/$($item.repo)"
        category    = $item.category
        stars       = [int]$meta.stars
        license     = $license
        licenseNote = if ($item.PSObject.Properties.Name -contains 'licenseNote') { $item.licenseNote } else { $null }
        archived    = [bool]$meta.archived
        fit         = $item.fit
        note        = $item.note
        author      = $meta.owner
        authorUrl   = "https://github.com/$($meta.owner)"
        description = $meta.description
        homepage    = $meta.homepage
        collectedAt = $CollectionDate
        source      = 'GitHub REST API via gh api repos/{owner}/{repo}'
    }
}

$built | ConvertTo-Json -Depth 4 | Set-Content (Join-Path $root 'data/repos.json') -Encoding utf8

Write-Host "Built $($built.Count) entries."
if ($rejected.Count -gt 0) {
    Write-Host 'Rejected:'
    $rejected | ForEach-Object { Write-Host "  $($_.repo) - $($_.reason)" }
}
