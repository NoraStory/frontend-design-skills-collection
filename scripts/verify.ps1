#!/usr/bin/env pwsh
# Verify data/repos.json, README table, skills cards and the xlsx index against each other,
# then re-check live GitHub metadata (license / archived / star drift).

param(
    [string]$GhExe = 'E:\tools\gh\bin\gh.exe',
    [switch]$SkipLive
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$entries = Get-Content (Join-Path $root 'data/repos.json') -Raw | ConvertFrom-Json
$readme = Get-Content (Join-Path $root 'README.md') -Raw
$errors = @()
$warnings = @()

# 1. Data integrity
if ($entries.Count -lt 50) { $errors += "Entry count is $($entries.Count), expected >= 50." }
$dupes = $entries | Group-Object repo | Where-Object Count -gt 1
foreach ($d in $dupes) { $errors += "Duplicate repo: $($d.Name)" }
foreach ($e in $entries) {
    if ([string]::IsNullOrWhiteSpace($e.license)) { $errors += "Empty license: $($e.repo)" }
    if ($e.stars -isnot [int] -and $e.stars -isnot [long]) { $errors += "Non-numeric stars: $($e.repo)" }
    if ($e.stars -lt 3000) { $errors += "Stars below threshold: $($e.repo) ($($e.stars))" }
    if ($e.archived) { $errors += "Archived repo included: $($e.repo)" }
}

# 2. README per-category tables
$tableRows = @($readme -split "`r?`n" | Where-Object { $_ -match '^\|\s*\[[^\]]+\]' })
if ($tableRows.Count -ne $entries.Count) { $errors += "README tables have $($tableRows.Count) project rows, data has $($entries.Count)." }
$tableRepos = @()
foreach ($row in $tableRows) {
    $m = [regex]::Match($row, 'https://github\.com/([^)>]+)')
    if ($m.Success) { $tableRepos += $m.Groups[1].Value }
}
$tableUnique = @($tableRepos | Sort-Object -Unique)
if ($tableUnique.Count -ne $entries.Count) { $errors += "README table unique repos: $($tableUnique.Count), expected $($entries.Count)." }
$dataRepos = @($entries.repo | Sort-Object -Unique)
$missing = @($dataRepos | Where-Object { $tableUnique -notcontains $_ })
$extra = @($tableUnique | Where-Object { $dataRepos -notcontains $_ })
if ($missing.Count) { $errors += "README table missing: $($missing -join ', ')" }
if ($extra.Count) { $errors += "README table has unknown repos: $($extra -join ', ')" }

foreach ($e in $entries) {
    $row = $tableRows | Where-Object { $_ -match [regex]::Escape($e.url) } | Select-Object -First 1
    if (-not $row) { $errors += "README row missing: $($e.repo)"; continue }
    if ($row -notmatch "\|\s*$([regex]::Escape($e.stars.ToString('N0')))\s*\|") { $errors += "README star mismatch: $($e.repo)" }
    if ($row -notmatch "\|\s*$([regex]::Escape($e.license))\s*\|$") { $errors += "README license mismatch: $($e.repo)" }
}

# 3. README structure and credits
if ($readme -match '\*\*作者致谢：\*\*' -or $readme -match '\*\*为什么值得看：\*\*') {
    $errors += 'README still contains the old per-entry thank-you or rationale block.'
}
$sectionCount = @($readme -split "`r?`n" | Where-Object { $_ -match '^## ' }).Count
if ($sectionCount -lt 16) { $errors += "README has only $sectionCount level-2 sections, expected 12 categories plus 4 closing sections." }
$creditsSection = ($readme -split '## 致谢开源作者')[1]
if (-not $creditsSection) { $errors += 'README is missing the credits section.' }
else {
    $creditsSection = ($creditsSection -split '## 免责声明')[0]
    $creditLines = @($creditsSection -split "`r?`n" | Where-Object { $_ -match '^- \[@' })
    $uniqueAuthorNames = @($entries.author | Sort-Object -Unique)
    if ($creditLines.Count -ne $uniqueAuthorNames.Count) { $errors += "Credits have $($creditLines.Count) lines, expected $($uniqueAuthorNames.Count) authors." }
    foreach ($author in $uniqueAuthorNames) {
        $line = $creditLines | Where-Object { $_ -match "^[-] [\[]@$([regex]::Escape($author))\]" } | Select-Object -First 1
        if (-not $line) { $errors += "Credits missing author: $author"; continue }
        $projects = @($entries | Where-Object { $_.author -eq $author } | ForEach-Object { $_.name })
        foreach ($p in $projects) {
            if ($line -notmatch [regex]::Escape($p)) { $errors += "Credits line for $author missing project: $p" }
        }
    }
}

# 4. Cards
$cards = @(Get-ChildItem (Join-Path $root 'skills') -Filter '*.md')
if ($cards.Count -ne $entries.Count) { $errors += "skills/ has $($cards.Count) cards, expected $($entries.Count)." }
foreach ($e in $entries) {
    $cardPath = Join-Path $root "skills/$($e.slug).md"
    if (-not (Test-Path $cardPath)) { $errors += "Missing card: $($e.slug).md"; continue }
    $card = Get-Content $cardPath -Raw
    if ($card -notmatch [regex]::Escape($e.url)) { $errors += "Card missing repo URL: $($e.slug).md" }
    if ($card -notmatch [regex]::Escape($e.license)) { $errors += "Card missing license: $($e.slug).md" }
    if ($card -notmatch [regex]::Escape($e.stars.ToString('N0'))) { $errors += "Card star mismatch: $($e.slug).md" }
}

# 5. xlsx
$xlsxPath = Join-Path $root '目录索引.xlsx'
if (-not (Test-Path $xlsxPath)) { $errors += '目录索引.xlsx is missing.' }
else {
    $nodeScript = @'
const ExcelJS = require('exceljs');
const wb = new ExcelJS.Workbook();
wb.xlsx.readFile(process.argv[1]).then(() => {
  const ws = wb.worksheets[0];
  const headers = ws.getRow(1).values.slice(1);
  console.log(JSON.stringify({ rows: ws.rowCount - 1, headers }));
}).catch((e) => { console.error(e.message); process.exit(1); });
'@
    $xlsxJson = node -e $nodeScript $xlsxPath 2>&1
    if ($LASTEXITCODE -ne 0) { $errors += "xlsx read failed: $xlsxJson" }
    else {
        $x = $xlsxJson | ConvertFrom-Json
        if ($x.rows -ne $entries.Count) { $errors += "xlsx has $($x.rows) rows, expected $($entries.Count)." }
        $expectedHeaders = @('序号','名称','仓库','类别','Star','许可证','适用场景','作者链接','数据日期')
        if (($x.headers -join '|') -ne ($expectedHeaders -join '|')) { $errors += "xlsx headers mismatch: $($x.headers -join ', ')" }
    }
}

# 6. Live GitHub metadata
if (-not $SkipLive) {
    foreach ($e in $entries) {
        $jq = '{stars: .stargazers_count, license: .license.spdx_id, archived: .archived}'
        $raw = $null
        for ($attempt = 1; $attempt -le 2; $attempt++) {
            $raw = & $GhExe api "repos/$($e.repo)" --jq $jq 2>&1
            if ($LASTEXITCODE -eq 0) { break }
            Start-Sleep -Seconds 2
        }
        if ($LASTEXITCODE -ne 0) { $warnings += "Live check failed for $($e.repo)"; continue }
        $live = $raw | ConvertFrom-Json
        if ($live.archived) { $errors += "Repo is now archived: $($e.repo)" }
        if ($live.license -and $live.license -ne 'NOASSERTION' -and $live.license -ne $e.license) {
            $errors += "License changed: $($e.repo) $($e.license) -> $($live.license)"
        }
        if ($live.stars -ne $e.stars) {
            $warnings += "Star drift: $($e.repo) $($e.stars) -> $($live.stars)"
        }
    }
}

Write-Host "Entries: $($entries.Count) | Categories: $(@($entries.category | Sort-Object -Unique).Count) | Cards: $($cards.Count)"
if ($warnings.Count) {
    Write-Host "Warnings ($($warnings.Count)):"
    $warnings | ForEach-Object { Write-Host "  - $_" }
}
if ($errors.Count) {
    Write-Host "FAILED ($($errors.Count) errors):"
    $errors | ForEach-Object { Write-Host "  - $_" }
    exit 1
}
Write-Host 'PASS: README, data, cards and xlsx are consistent.'
