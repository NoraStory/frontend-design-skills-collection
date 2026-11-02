#!/usr/bin/env pwsh
# Render a compact, table-first README.md and one short card per entry under skills/.

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$entries = Get-Content (Join-Path $root 'data/repos.json') -Raw | ConvertFrom-Json

$categoryOrder = @(
    '落地页与营销页',
    'SaaS 控制台与仪表盘',
    '电商与商业转化',
    '作品集与个人站',
    '文档站与内容站',
    '动效与滚动叙事',
    '设计系统与 Token',
    'UI 组件库',
    '排版、字体与图标',
    '数据可视化',
    '视觉编辑器与 AI 辅助出稿',
    '演示、图形与视觉叙事'
)

$categoryNotes = @{
    '落地页与营销页' = '用最短路径搭出产品首屏、定价页与活动页，重点看视觉冲击和区块完整度。'
    'SaaS 控制台与仪表盘' = '面向登录后的工作台、数据监控与运营后台，优先考虑信息密度和组件完备度。'
    '电商与商业转化' = '从商品、订单到店面体验，适合需要真实交易链路的商业项目。'
    '作品集与个人站' = '个人品牌、简历与项目展示，强调排版、叙事和轻量维护。'
    '文档站与内容站' = '产品文档、知识库与技术博客，关注导航、搜索、版本与可读性。'
    '动效与滚动叙事' = '页面转场、滚动联动、3D 与微交互，用来建立节奏和记忆点。'
    '设计系统与 Token' = '从颜色、间距到组件规范，适合需要长期一致性的产品体系。'
    'UI 组件库' = '直接提供可复用的界面组件，按技术栈和视觉风格选择。'
    '排版、字体与图标' = '界面字体、等宽字体、图标与品牌图形，决定产品的细节质感。'
    '数据可视化' = '图表、仪表盘与大屏，按定制程度和图表类型选择。'
    '视觉编辑器与 AI 辅助出稿' = '设计稿、白板、截图与代码之间的转换，适合探索和交付提速。'
    '演示、图形与视觉叙事' = '幻灯片、流程图与节点画布，用可视化方式讲清复杂信息。'
}

$date = $entries[0].collectedAt
$total = $entries.Count
$uniqueAuthors = @($entries | Group-Object author)

function Format-Num([int]$n) { return $n.ToString('N0') }

$nav = ($categoryOrder | ForEach-Object { $i = [array]::IndexOf($categoryOrder, $_); "[$($_)](#cat-$($i + 1))" }) -join ' · '

$sb = [System.Text.StringBuilder]::new()
function Add-Text([string]$text) { [void]$sb.AppendLine($text) }

Add-Text '<div align="center">'
Add-Text ''
Add-Text '# 开源前端设计技能合集'
Add-Text ''
Add-Text '**73 个高星、许可证清晰的 open-source 前端设计项目，按使用场景整理。**'
Add-Text ''
Add-Text '![项目数](https://img.shields.io/badge/projects-73-111827?style=flat-square)'
Add-Text '![许可证](https://img.shields.io/badge/licenses-MIT%20%7C%20Apache--2.0%20%7C%20BSD%20%7C%20ISC%20%7C%20MPL%20%7C%20CC%20%7C%20OFL-0f766e?style=flat-square)'
Add-Text "![数据日期](https://img.shields.io/badge/data-$($date -replace '-', '--')-2563eb?style=flat-square)"
Add-Text '![PRs](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)'
Add-Text ''
Add-Text "<sub>最后核验：$date · 仅收录 Star ≥ 3,000 且未归档的仓库</sub>"
Add-Text ''
Add-Text "<sub>$nav</sub>"
Add-Text ''
Add-Text '</div>'
Add-Text ''
Add-Text '这份清单解决一个问题：**当你要做某类前端界面时，应该从哪个开源项目开始。** 每个分类下用一张表列出项目、具体适用场景、Star 与许可证；点名称即可进入仓库。'
Add-Text ''

for ($i = 0; $i -lt $categoryOrder.Count; $i++) {
    $cat = $categoryOrder[$i]
    $items = @($entries | Where-Object { $_.category -eq $cat } | Sort-Object stars -Descending)
    Add-Text "<a id=""cat-$($i + 1)""></a>"
    Add-Text ''
    Add-Text "## $cat"
    Add-Text ''
    Add-Text $categoryNotes[$cat]
    Add-Text ''
    Add-Text '| 技能 | 什么时候用 | Star | 许可证 |'
    Add-Text '| --- | --- | ---: | --- |'
    foreach ($e in $items) {
        $fitCell = $e.fit -replace '\|', '\|'
        Add-Text "| [$($e.name)](<$($e.url)>) | $fitCell | $(Format-Num $e.stars) | $($e.license) |"
    }
    Add-Text ''
}

Add-Text '## 致谢开源作者'
Add-Text ''
Add-Text '感谢以下作者与组织。同一维护者合并为一行，括号内是其在本清单中的项目；也感谢所有项目的贡献者与社区。'
Add-Text ''
$sortedAuthors = $uniqueAuthors | Sort-Object @{ Expression = { $_.Count }; Descending = $true }, @{ Expression = { $_.Name.ToLower() }; Descending = $false }
foreach ($g in $sortedAuthors) {
    $projects = ($g.Group | Sort-Object name | ForEach-Object { $_.name }) -join '、'
    Add-Text "- [@$($g.Name)](https://github.com/$($g.Name))（$projects）"
}
Add-Text ''
Add-Text '## 免责声明'
Add-Text ''
Add-Text '本仓库只做收集与整理，**不拥有任何上游项目的版权**。代码、设计、字体、图标与商标归原作者及贡献者所有，使用时请遵守各项目自己的许可证。收录不代表安全审计或商业适用性背书。'
Add-Text ''

$readme = Join-Path $root 'README.md'
[System.IO.File]::WriteAllText($readme, $sb.ToString(), [System.Text.UTF8Encoding]::new($false))

# Keep short cards factually aligned with README.
$skillsDir = Join-Path $root 'skills'
Get-ChildItem $skillsDir -Filter '*.md' | Remove-Item -Force
foreach ($e in $entries) {
    $card = @"
# $($e.name)

- **类别**：$($e.category)
- **仓库**：[$($e.repo)](<$($e.url)>)
- **Star**：$(Format-Num $e.stars)（$($e.collectedAt)）
- **许可证**：$($e.license)$(if ($e.licenseNote) { "（$($e.licenseNote)）" } else { '' })
- **作者**：[@$($e.author)](<$($e.authorUrl)>)
- **最适合**：$($e.fit)
- **为什么值得看**：$($e.note)

[返回合集](../README.md)
"@
    $path = Join-Path $skillsDir "$($e.slug).md"
    [System.IO.File]::WriteAllText($path, $card, [System.Text.UTF8Encoding]::new($false))
}

Write-Host "Rendered README.md ($($sb.ToString().Split("`n").Count) lines) and $($entries.Count) cards."
