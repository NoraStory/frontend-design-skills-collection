#!/usr/bin/env pwsh
# Render README.md and one short card per entry under skills/ from data/repos.json.

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

$date = $entries[0].collectedAt
$total = $entries.Count
$sb = [System.Text.StringBuilder]::new()

function Add-Text([string]$text) { [void]$sb.AppendLine($text) }
function Format-Num([int]$n) { return $n.ToString('N0') }

Add-Text '# 开源前端设计技能合集'
Add-Text ''
Add-Text "> **$total 个真实可查的开源项目，按前端设计场景整理。**"
Add-Text '>'
Add-Text "> 数据采集日期：**$date** ｜ 采集方式：通过已登录的 GitHub CLI 执行 ``gh api repos/{owner}/{repo}``，逐条读取 ``stargazers_count``、``license.spdx_id``、``archived``、``owner.login``；全部数字为当日快照，未使用估算值。"
Add-Text '>'
Add-Text '> 筛选口径：Star 数 ≥ 3,000、具备明确开源许可证、仓库未归档。许可证白名单为 MIT / Apache-2.0 / BSD-2-Clause / BSD-3-Clause / ISC / MPL-2.0 / CC0-1.0 / OFL-1.1 / 0BSD。'
Add-Text ''
Add-Text '## 这个合集是什么'
Add-Text ''
Add-Text '这里收集的是**能直接拿来设计或搭建前端界面**的开源项目：UI 组件库、设计系统与 Token 方案、营销页模板、后台与仪表盘、作品集与文档站、动效与滚动叙事、字体图标、数据可视化、视觉编辑器与 AI 出稿工具。'
Add-Text ''
Add-Text '每个条目都回答三件事：**许可证是什么、现在有多少 Star、最适合设计哪一类前端**。Star 与许可证会在每次更新时重新核验，不凭印象填写。'
Add-Text ''
Add-Text '### 快速选型'
Add-Text ''
Add-Text '| 你要做的界面 | 优先看 |'
Add-Text '| --- | --- |'
Add-Text '| 高端 SaaS / AI 产品营销首屏 | [Magic UI](#entry-magic-ui)、[Taxonomy](#entry-taxonomy)、[Flowbite](#entry-flowbite) |'
Add-Text '| 数据密集型后台与 BI 仪表盘 | [Apache Superset](#entry-apache-superset)、[Tremor](#entry-tremor)、[Tabler](#entry-tabler) |'
Add-Text '| 企业级中后台与表单系统 | [Ant Design](#entry-ant-design)、[MUI](#entry-material-ui)、[Element Plus](#entry-element-plus) |'
Add-Text '| 开发者作品集与个人品牌站 | [v4](#entry-v4)、[Simplefolio](#entry-simplefolio)、[MasterPortfolio](#entry-masterportfolio) |'
Add-Text '| 产品文档 / 开发者文档 | [Docusaurus](#entry-docusaurus)、[Starlight](#entry-starlight)、[MkDocs Material](#entry-mkdocs-material) |'
Add-Text '| 3D / WebGL 品牌站 | [three.js](#entry-three-js)、[React Three Fiber](#entry-react-three-fiber) |'
Add-Text '| 丝滑滚动与页面转场 | [Lenis](#entry-lenis)、[Motion](#entry-motion)、[Barba.js](#entry-barba-js) |'
Add-Text '| 头less 电商与定制店面 | [Saleor](#entry-saleor)、[Spree Commerce](#entry-spree-commerce)、[Sylius](#entry-sylius) |'
Add-Text '| 移动端 Web / 混合 App | [Ionic Framework](#entry-ionic-framework) |'
Add-Text '| 截图 / 设计稿转代码 | [Screenshot to Code](#entry-screenshot-to-code)、[Onlook](#entry-onlook)、[Mitosis](#entry-mitosis) |'
Add-Text ''
Add-Text '## 分类索引'
Add-Text ''
for ($i = 0; $i -lt $categoryOrder.Count; $i++) {
    $cat = $categoryOrder[$i]
    $count = @($entries | Where-Object { $_.category -eq $cat }).Count
    Add-Text "- [$cat](#cat-$($i + 1))：$count 个"
}
Add-Text ''
Add-Text '## 分类详情'
Add-Text ''

for ($i = 0; $i -lt $categoryOrder.Count; $i++) {
    $cat = $categoryOrder[$i]
    $items = @($entries | Where-Object { $_.category -eq $cat } | Sort-Object stars -Descending)
    Add-Text "<a id=""cat-$($i + 1)""></a>"
    Add-Text ''
    Add-Text "### $($i + 1). $cat"
    Add-Text ''
    Add-Text "$($items.Count) 个项目，按 Star 数从高到低排列。"
    Add-Text ''
    foreach ($e in $items) {
        Add-Text "<a id=""entry-$($e.slug)""></a>"
        Add-Text ''
        Add-Text "#### $($e.name)"
        Add-Text ''
        Add-Text "[仓库](<$($e.url)>) ｜ Star **$(Format-Num $e.stars)** ｜ 许可证 **$($e.license)** ｜ [短卡片](skills/$($e.slug).md)"
        Add-Text ''
        Add-Text "**最适合：** $($e.fit)"
        Add-Text ''
        Add-Text "**为什么值得看：** $($e.note)"
        Add-Text ''
        if ($e.licenseNote) { Add-Text "**许可证备注：** $($e.licenseNote)" }
        if ($e.licenseNote) { Add-Text '' }
        Add-Text "**作者致谢：** 感谢 [@$($e.author)](<$($e.authorUrl)>) 与所有贡献者。"
        Add-Text ''
    }
}

Add-Text '## 汇总表'
Add-Text ''
Add-Text '| # | 名称 | 类别 | Star | 许可证 | 最适合 |'
Add-Text '| --- | --- | --- | ---: | --- | --- |'
$idx = 0
foreach ($cat in $categoryOrder) {
    $items = @($entries | Where-Object { $_.category -eq $cat } | Sort-Object stars -Descending)
    foreach ($e in $items) {
        $idx++
        $fitCell = $e.fit -replace '\|', '\|'
        Add-Text "| $idx | [$($e.name)](<$($e.url)>) | $($e.category) | $(Format-Num $e.stars) | $($e.license) | $fitCell |"
    }
}
Add-Text ''
Add-Text '## 数据统计'
Add-Text ''
Add-Text "| 指标 | 数值 |"
Add-Text '| --- | --- |'
Add-Text "| 条目总数 | $total |"
Add-Text "| 分类数 | $($categoryOrder.Count) |"
Add-Text "| Star 总数 | $(Format-Num ([int]($entries | Measure-Object stars -Sum).Sum)) |"
Add-Text "| Star 中位数 | $(Format-Num ([int](($entries | Sort-Object stars)[[int]($total / 2)].stars))) |"
Add-Text "| 最低 Star | $(Format-Num (($entries | Measure-Object stars -Minimum).Minimum)) |"
Add-Text "| 最高 Star | $(Format-Num (($entries | Measure-Object stars -Maximum).Maximum)) |"
Add-Text ''
Add-Text '许可证分布：'
Add-Text ''
Add-Text '| 许可证 | 数量 |'
Add-Text '| --- | ---: |'
foreach ($g in ($entries | Group-Object license | Sort-Object Count -Descending)) {
    Add-Text "| $($g.Name) | $($g.Count) |"
}
Add-Text ''
Add-Text '## 被排除的项目与原因'
Add-Text ''
Add-Text '为保证合集可用、可商用、可长期维护，以下类型被主动排除：'
Add-Text ''
Add-Text '- **已归档**：picocss/pico、vercel/commerce、shoelace-style/shoelace、vercel/nextjs-subscription-payments、Shopify/polaris、1hanzla100/developer-portfolio。归档项目不再接收维护，不纳入推荐。'
Add-Text '- **许可证不达标**：mattboldt/typed.js 为 GPL-3.0；saleor/storefront 为 FSL-1.1（source-available，带商用限制）；medusajs/medusa 核心为 MIT 但包含 Enterprise Edition 限制；apexcharts/apexcharts.js 为双许可模式；ariakit/ariakit、leerob/leerob.io、scrollreveal/scrollreveal、cruip 的两个模板、google/fonts 未提供统一根许可证（或需逐字体核对），均不纳入。'
Add-Text '- **商业授权 / 自定义许可**：GSAP（GreenSock 标准许可）、tldraw（tldraw license）、Tailwind UI / Aceternity UI 等付费或 source-available 产品不属于开源许可范围。'
Add-Text '- **Star 门槛**：低于 3,000 Star 的垂直项目（例如 Shopify/hydrogen 2,163、startbootstrap-agency 2,034、designrevision/shards-ui 1,709）暂不收录，避免合集被小型模板稀释。'
Add-Text ''
Add-Text '## 数据核对与复现'
Add-Text ''
Add-Text '所有数据来自 GitHub 公开仓库元数据，可用下面的命令逐条复核（需要已登录的 ``gh``）：'
Add-Text ''
Add-Text '```bash'
Add-Text 'gh api repos/shadcn-ui/ui --jq ''{stars: .stargazers_count, license: .license.spdx_id, archived: .archived, owner: .owner.login}'''
Add-Text '```'
Add-Text ''
Add-Text '本仓库的复现链路：'
Add-Text ''
Add-Text '1. ``data/curation.json``：人工整理的项目、分类、适用场景与短评。'
Add-Text '2. ``scripts/build-data.ps1``：逐条调用 ``gh api``，写入实时 Star / 许可证 / 归档状态，生成 ``data/repos.json``。'
Add-Text '3. ``scripts/build-docs.ps1``：由 ``data/repos.json`` 渲染 README 与 ``skills/`` 卡片，保证三者一致。'
Add-Text '4. ``scripts/verify.ps1``：重新拉取 GitHub 数据并核对 README 表格、Star 数、许可证与条目数。'
Add-Text ''
Add-Text '## 贡献指南'
Add-Text ''
Add-Text '欢迎补充项目，请满足以下条件：'
Add-Text ''
Add-Text '1. 仓库仍在维护、未归档，Star ≥ 3,000（特别优秀的垂直项目可说明理由）。'
Add-Text '2. 具备明确的开源许可证（MIT / Apache-2.0 / BSD / ISC / MPL-2.0 / CC / OFL 等），不接受 source-available 或自定义商用限制。'
Add-Text '3. 与前端设计直接相关：UI、设计系统、模板、动效、字体图标、数据可视化、设计工具或 AI 出稿。'
Add-Text '4. 在 ``data/curation.json`` 增加条目（名称、仓库、分类、最适合、为什么值得看），运行生成脚本，不要在 README 里手工改表。'
Add-Text '5. 提交前运行 ``pwsh ./scripts/verify.ps1``，确保没有重复、没有失效链接、许可证非空。'
Add-Text ''
Add-Text '## 免责声明'
Add-Text ''
Add-Text '本仓库**只做收集与整理，不拥有任何上游项目的版权**。所有代码、设计、字体、图标与商标版权归原作者及贡献者所有，使用时请遵守各项目自己的许可证。'
Add-Text ''
Add-Text 'Star 数与许可证是 2026-11-02 的快照，会随时间变化；收录不代表安全审计或商业适用性背书，生产使用前请自行复核许可证与供应链风险。'
Add-Text ''
Add-Text '本合集文档采用 [CC BY 4.0](LICENSE) 许可；各上游项目仍保留其原始许可证。'
Add-Text ''
Add-Text '## 目录'
Add-Text ''
Add-Text '- [README.md](README.md)：分类说明、逐条点评与汇总表'
Add-Text '- [目录索引.xlsx](目录索引.xlsx)：可筛选的表格索引'
Add-Text '- [skills/](skills/)：每个项目一张短卡片'
Add-Text '- [data/repos.json](data/repos.json)：结构化数据源'
Add-Text '- [scripts/](scripts/)：采集、生成与校验脚本'
Add-Text ''

$readme = Join-Path $root 'README.md'
[System.IO.File]::WriteAllText($readme, $sb.ToString(), [System.Text.UTF8Encoding]::new($false))

# Generate short cards.
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

Write-Host "Rendered README.md and $($entries.Count) cards under skills/."
