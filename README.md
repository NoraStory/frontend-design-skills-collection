# 开源前端设计技能合集

> **73 个真实可查的开源项目，按前端设计场景整理。**
>
> 数据采集日期：**2026-11-02** ｜ 采集方式：通过已登录的 GitHub CLI 执行 `gh api repos/{owner}/{repo}`，逐条读取 `stargazers_count`、`license.spdx_id`、`archived`、`owner.login`；全部数字为当日快照，未使用估算值。
>
> 筛选口径：Star 数 ≥ 3,000、具备明确开源许可证、仓库未归档。许可证白名单为 MIT / Apache-2.0 / BSD-2-Clause / BSD-3-Clause / ISC / MPL-2.0 / CC0-1.0 / OFL-1.1 / 0BSD。

## 这个合集是什么

这里收集的是**能直接拿来设计或搭建前端界面**的开源项目：UI 组件库、设计系统与 Token 方案、营销页模板、后台与仪表盘、作品集与文档站、动效与滚动叙事、字体图标、数据可视化、视觉编辑器与 AI 出稿工具。

每个条目都回答三件事：**许可证是什么、现在有多少 Star、最适合设计哪一类前端**。Star 与许可证会在每次更新时重新核验，不凭印象填写。

### 快速选型

| 你要做的界面 | 优先看 |
| --- | --- |
| 高端 SaaS / AI 产品营销首屏 | [Magic UI](#entry-magic-ui)、[Taxonomy](#entry-taxonomy)、[Flowbite](#entry-flowbite) |
| 数据密集型后台与 BI 仪表盘 | [Apache Superset](#entry-apache-superset)、[Tremor](#entry-tremor)、[Tabler](#entry-tabler) |
| 企业级中后台与表单系统 | [Ant Design](#entry-ant-design)、[MUI](#entry-material-ui)、[Element Plus](#entry-element-plus) |
| 开发者作品集与个人品牌站 | [v4](#entry-v4)、[Simplefolio](#entry-simplefolio)、[MasterPortfolio](#entry-masterportfolio) |
| 产品文档 / 开发者文档 | [Docusaurus](#entry-docusaurus)、[Starlight](#entry-starlight)、[MkDocs Material](#entry-mkdocs-material) |
| 3D / WebGL 品牌站 | [three.js](#entry-three-js)、[React Three Fiber](#entry-react-three-fiber) |
| 丝滑滚动与页面转场 | [Lenis](#entry-lenis)、[Motion](#entry-motion)、[Barba.js](#entry-barba-js) |
| 头less 电商与定制店面 | [Saleor](#entry-saleor)、[Spree Commerce](#entry-spree-commerce)、[Sylius](#entry-sylius) |
| 移动端 Web / 混合 App | [Ionic Framework](#entry-ionic-framework) |
| 截图 / 设计稿转代码 | [Screenshot to Code](#entry-screenshot-to-code)、[Onlook](#entry-onlook)、[Mitosis](#entry-mitosis) |

## 分类索引

- [落地页与营销页](#cat-1)：5 个
- [SaaS 控制台与仪表盘](#cat-2)：6 个
- [电商与商业转化](#cat-3)：3 个
- [作品集与个人站](#cat-4)：4 个
- [文档站与内容站](#cat-5)：7 个
- [动效与滚动叙事](#cat-6)：7 个
- [设计系统与 Token](#cat-7)：10 个
- [UI 组件库](#cat-8)：8 个
- [排版、字体与图标](#cat-9)：7 个
- [数据可视化](#cat-10)：6 个
- [视觉编辑器与 AI 辅助出稿](#cat-11)：5 个
- [演示、图形与视觉叙事](#cat-12)：5 个

## 分类详情

<a id="cat-1"></a>

### 1. 落地页与营销页

5 个项目，按 Star 数从高到低排列。

<a id="entry-magic-ui"></a>

#### Magic UI

[仓库](<https://github.com/magicuidesign/magicui>) ｜ Star **23,037** ｜ 许可证 **MIT** ｜ [短卡片](skills/magic-ui.md)

**最适合：** 适合 AI / SaaS 产品的营销首屏，用粒子、光束、跑马灯和数字动效制造记忆点。

**为什么值得看：** 基于 React、Tailwind 与 Motion 的动画组件库，复制即用，适合快速做高视觉冲击的落地页。

**作者致谢：** 感谢 [@magicuidesign](<https://github.com/magicuidesign>) 与所有贡献者。

<a id="entry-taxonomy"></a>

#### Taxonomy

[仓库](<https://github.com/shadcn-ui/taxonomy>) ｜ Star **19,291** ｜ 许可证 **MIT** ｜ [短卡片](skills/taxonomy.md)

**最适合：** 适合带登录、订阅与文档的 SaaS 产品站，尤其是 shadcn 风格的营销首屏、定价页和博客组合。

**为什么值得看：** Next.js + shadcn/ui + NextAuth + Stripe 的完整应用骨架，营销页、文档页和后台都能直接复用。

**作者致谢：** 感谢 [@shadcn-ui](<https://github.com/shadcn-ui>) 与所有贡献者。

<a id="entry-flowbite"></a>

#### Flowbite

[仓库](<https://github.com/themesberg/flowbite>) ｜ Star **9,382** ｜ 许可证 **MIT** ｜ [短卡片](skills/flowbite.md)

**最适合：** 适合中小团队用 Tailwind 快速拼出营销页、价格页、博客和后台界面。

**为什么值得看：** 组件与页面 blocks 覆盖完整，文档和 Figma 资源同步，落地速度快。

**作者致谢：** 感谢 [@themesberg](<https://github.com/themesberg>) 与所有贡献者。

<a id="entry-material-kit-react"></a>

#### Material Kit React

[仓库](<https://github.com/devias-io/material-kit-react>) ｜ Star **5,581** ｜ 许可证 **MIT** ｜ [短卡片](skills/material-kit-react.md)

**最适合：** 适合需要成套 MUI 营销区块的 SaaS 官网，Hero、Features、Pricing、Testimonials 可直接替换文案。

**为什么值得看：** 免费版就提供完整营销页面结构，适合快速做出体面的产品官网。

**作者致谢：** 感谢 [@devias-io](<https://github.com/devias-io>) 与所有贡献者。

<a id="entry-material-tailwind"></a>

#### Material Tailwind

[仓库](<https://github.com/creativetimofficial/material-tailwind>) ｜ Star **4,363** ｜ 许可证 **MIT** ｜ [短卡片](skills/material-tailwind.md)

**最适合：** 适合想要 Material 质感又不想放弃 Tailwind 效率的产品官网与营销页。

**为什么值得看：** 把 Material Design 的层次、阴影和动效带进 Tailwind，组件 API 简单。

**作者致谢：** 感谢 [@creativetimofficial](<https://github.com/creativetimofficial>) 与所有贡献者。

<a id="cat-2"></a>

### 2. SaaS 控制台与仪表盘

6 个项目，按 Star 数从高到低排列。

<a id="entry-apache-superset"></a>

#### Apache Superset

[仓库](<https://github.com/apache/superset>) ｜ Star **75,387** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/apache-superset.md)

**最适合：** 适合数据密集型的内部 BI 控制台、运营分析台和可配置的大屏。

**为什么值得看：** 成熟的 SQL 查询、图表与仪表盘体系，适合直接做企业分析平台而不是从零写图表。

**作者致谢：** 感谢 [@apache](<https://github.com/apache>) 与所有贡献者。

<a id="entry-adminlte"></a>

#### AdminLTE

[仓库](<https://github.com/ColorlibHQ/AdminLTE>) ｜ Star **45,672** ｜ 许可证 **MIT** ｜ [短卡片](skills/adminlte.md)

**最适合：** 适合传统后台、运维面板和 CRUD 管理系统，尤其是需要快速落地的 Bootstrap 项目。

**为什么值得看：** 经典后台模板，菜单、表格、表单和小部件齐全，改造成本低。

**作者致谢：** 感谢 [@ColorlibHQ](<https://github.com/ColorlibHQ>) 与所有贡献者。

<a id="entry-tabler"></a>

#### Tabler

[仓库](<https://github.com/Tabler/tabler>) ｜ Star **41,987** ｜ 许可证 **MIT** ｜ [短卡片](skills/tabler.md)

**最适合：** 适合干净、密度适中的 SaaS 管理后台、监控台和项目工作台。

**为什么值得看：** 设计克制的 Bootstrap 后台套件，页面和组件覆盖广，视觉比传统 Admin 模板更现代。

**作者致谢：** 感谢 [@tabler](<https://github.com/tabler>) 与所有贡献者。

<a id="entry-appsmith"></a>

#### Appsmith

[仓库](<https://github.com/appsmithorg/appsmith>) ｜ Star **41,149** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/appsmith.md)

**最适合：** 适合低代码内部工具、运营后台和把表格/表单/图表快速拼成工作台的场景。

**为什么值得看：** 拖拽式搭建 + 可写 JS，能在不写完整前端的情况下交付内部系统。

**作者致谢：** 感谢 [@appsmithorg](<https://github.com/appsmithorg>) 与所有贡献者。

<a id="entry-refine"></a>

#### Refine

[仓库](<https://github.com/refinedev/refine>) ｜ Star **35,980** ｜ 许可证 **MIT** ｜ [短卡片](skills/refine.md)

**最适合：** 适合 React 内部工具、管理后台和需要快速接 REST/GraphQL 的 CRUD 产品。

**为什么值得看：** 无头架构把 UI 与数据层解耦，可接 Ant Design、MUI、Chakra 等多种设计系统。

**作者致谢：** 感谢 [@refinedev](<https://github.com/refinedev>) 与所有贡献者。

<a id="entry-tremor"></a>

#### Tremor

[仓库](<https://github.com/tremorlabs/tremor>) ｜ Star **3,686** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/tremor.md)

**最适合：** 适合以 KPI 卡片、趋势图、状态条为核心的现代 SaaS 仪表盘。

**为什么值得看：** 专门为仪表盘设计的组件与图表，默认样式就很像成熟数据产品。

**作者致谢：** 感谢 [@tremorlabs](<https://github.com/tremorlabs>) 与所有贡献者。

<a id="cat-3"></a>

### 3. 电商与商业转化

3 个项目，按 Star 数从高到低排列。

<a id="entry-saleor"></a>

#### Saleor

[仓库](<https://github.com/saleor/saleor>) ｜ Star **23,500** ｜ 许可证 **BSD-3-Clause** ｜ [短卡片](skills/saleor.md)

**最适合：** 适合需要 GraphQL 头less 电商后端与高度定制店面的中大型商业项目。

**为什么值得看：** API-first 的电商平台，商品、订单、支付和促销模型完整，前端可自由发挥。

**作者致谢：** 感谢 [@saleor](<https://github.com/saleor>) 与所有贡献者。

<a id="entry-spree-commerce"></a>

#### Spree Commerce

[仓库](<https://github.com/spree/spree>) ｜ Star **15,805** ｜ 许可证 **BSD-3-Clause** ｜ [短卡片](skills/spree-commerce.md)

**最适合：** 适合 Ruby/Rails 技术栈的电商后台、多店铺运营和需要深度定制的交易流程。

**为什么值得看：** 老牌开源电商框架，后台与订单体系成熟，适合有 Rails 团队的商业项目。

**作者致谢：** 感谢 [@spree](<https://github.com/spree>) 与所有贡献者。

<a id="entry-sylius"></a>

#### Sylius

[仓库](<https://github.com/sylius/sylius>) ｜ Star **8,564** ｜ 许可证 **MIT** ｜ [短卡片](skills/sylius.md)

**最适合：** 适合 PHP/Symfony 电商，尤其是复杂商品模型、多语言和多市场场景。

**为什么值得看：** 以组件化方式构建电商，领域模型清晰，适合需要长期演进的商业系统。

**作者致谢：** 感谢 [@Sylius](<https://github.com/Sylius>) 与所有贡献者。

<a id="cat-4"></a>

### 4. 作品集与个人站

4 个项目，按 Star 数从高到低排列。

<a id="entry-simplefolio"></a>

#### Simplefolio

[仓库](<https://github.com/cobiwave/simplefolio>) ｜ Star **14,220** ｜ 许可证 **MIT** ｜ [短卡片](skills/simplefolio.md)

**最适合：** 适合快速上线一个干净的开发者作品集，重点突出项目卡片和简历下载。

**为什么值得看：** React + 简洁版式，动效克制，适合不想过度设计的求职者。

**作者致谢：** 感谢 [@cobiwave](<https://github.com/cobiwave>) 与所有贡献者。

<a id="entry-v4"></a>

#### v4 (Brittany Chiang Portfolio)

[仓库](<https://github.com/bchiang7/v4>) ｜ Star **8,290** ｜ 许可证 **MIT** ｜ [短卡片](skills/v4.md)

**最适合：** 适合开发者个人作品集，想要深色极简、强排版和单页叙事的高级感。

**为什么值得看：** 被大量作品集模仿的经典结构，导航、经历时间线和项目卡片都值得参考。

**作者致谢：** 感谢 [@bchiang7](<https://github.com/bchiang7>) 与所有贡献者。

<a id="entry-vcard-personal-portfolio"></a>

#### VCard Personal Portfolio

[仓库](<https://github.com/codewithsadee/vcard-personal-portfolio>) ｜ Star **8,159** ｜ 许可证 **MIT** ｜ [短卡片](skills/vcard-personal-portfolio.md)

**最适合：** 适合个人简历式名片站，单页展示头像、技能、项目与联系方式。

**为什么值得看：** 纯 HTML/CSS/JS 的轻量模板，结构清楚，改文案和配色即可上线。

**作者致谢：** 感谢 [@codewithsadee](<https://github.com/codewithsadee>) 与所有贡献者。

<a id="entry-masterportfolio"></a>

#### MasterPortfolio

[仓库](<https://github.com/ashutosh1919/masterPortfolio>) ｜ Star **4,225** ｜ 许可证 **MIT** ｜ [短卡片](skills/masterportfolio.md)

**最适合：** 适合想要丰富模块（关于、技能、经历、项目、博客）的个人品牌站。

**为什么值得看：** 模块化 React 作品集，主题和内容配置集中，适合一次搭好长期维护。

**作者致谢：** 感谢 [@ashutosh1919](<https://github.com/ashutosh1919>) 与所有贡献者。

<a id="cat-5"></a>

### 5. 文档站与内容站

7 个项目，按 Star 数从高到低排列。

<a id="entry-docusaurus"></a>

#### Docusaurus

[仓库](<https://github.com/facebook/docusaurus>) ｜ Star **66,637** ｜ 许可证 **MIT** ｜ [短卡片](skills/docusaurus.md)

**最适合：** 适合产品文档、开发者文档和需要版本化/国际化/博客的内容站。

**为什么值得看：** Meta 开源文档框架，文档版本、搜索、插件和主题生态成熟。

**作者致谢：** 感谢 [@meta](<https://github.com/meta>) 与所有贡献者。

<a id="entry-docsify"></a>

#### Docsify

[仓库](<https://github.com/docsifyjs/docsify>) ｜ Star **31,574** ｜ 许可证 **MIT** ｜ [短卡片](skills/docsify.md)

**最适合：** 适合轻量 Markdown 文档站，不想引入构建流程、直接静态托管即可。

**为什么值得看：** 运行时渲染 Markdown，零构建，适合快速搭知识库和项目说明。

**作者致谢：** 感谢 [@docsifyjs](<https://github.com/docsifyjs>) 与所有贡献者。

<a id="entry-mkdocs-material"></a>

#### MkDocs Material

[仓库](<https://github.com/squidfunk/mkdocs-material>) ｜ Star **27,594** ｜ 许可证 **MIT** ｜ [短卡片](skills/mkdocs-material.md)

**最适合：** 适合技术手册、知识库和需要精致导航、搜索、代码高亮的文档站。

**为什么值得看：** Material 风格文档主题的事实标准，配置丰富，移动端体验好。

**作者致谢：** 感谢 [@squidfunk](<https://github.com/squidfunk>) 与所有贡献者。

<a id="entry-mdbook"></a>

#### mdBook

[仓库](<https://github.com/rust-lang/mdBook>) ｜ Star **22,258** ｜ 许可证 **MPL-2.0** ｜ [短卡片](skills/mdbook.md)

**最适合：** 适合 Rust/CLI 工具书式文档，生成可离线阅读的电子书。

**为什么值得看：** Rust 官方文档工具链常用，Markdown 写作、单文件输出、搜索都具备。

**作者致谢：** 感谢 [@rust-lang](<https://github.com/rust-lang>) 与所有贡献者。

<a id="entry-hugo-papermod"></a>

#### Hugo PaperMod

[仓库](<https://github.com/adityatelange/hugo-PaperMod>) ｜ Star **14,024** ｜ 许可证 **MIT** ｜ [短卡片](skills/hugo-papermod.md)

**最适合：** 适合博客、技术写作和偏内容型的个人站，追求极简、快和 SEO 友好。

**为什么值得看：** Hugo 的高人气主题，暗色模式、目录、搜索和社交链接开箱即用。

**作者致谢：** 感谢 [@adityatelange](<https://github.com/adityatelange>) 与所有贡献者。

<a id="entry-nextra"></a>

#### Nextra

[仓库](<https://github.com/shuding/nextra>) ｜ Star **13,947** ｜ 许可证 **MIT** ｜ [短卡片](skills/nextra.md)

**最适合：** 适合 Next.js 生态的文档 + 博客混合站，需要 MDX 与内置主题。

**为什么值得看：** 基于 Next.js 的文档框架，写 MDX 就能得到完整导航、搜索和主题。

**作者致谢：** 感谢 [@shuding](<https://github.com/shuding>) 与所有贡献者。

<a id="entry-starlight"></a>

#### Starlight

[仓库](<https://github.com/withastro/starlight>) ｜ Star **9,510** ｜ 许可证 **MIT** ｜ [短卡片](skills/starlight.md)

**最适合：** 适合 Astro 项目的开发者文档站，轻量且可访问性好的默认设计。

**为什么值得看：** Astro 官方文档主题，内置侧边栏、搜索、i18n 和暗色模式。

**作者致谢：** 感谢 [@withastro](<https://github.com/withastro>) 与所有贡献者。

<a id="cat-6"></a>

### 6. 动效与滚动叙事

7 个项目，按 Star 数从高到低排列。

<a id="entry-three-js"></a>

#### three.js

[仓库](<https://github.com/mrdoob/three.js>) ｜ Star **117,412** ｜ 许可证 **MIT** ｜ [短卡片](skills/three-js.md)

**最适合：** 适合需要 3D 产品展示、WebGL 首屏和空间叙事的品牌站。

**为什么值得看：** WebGL 生态最成熟的三维库，示例和材质/光照能力覆盖绝大多数 3D 网页需求。

**作者致谢：** 感谢 [@mrdoob](<https://github.com/mrdoob>) 与所有贡献者。

<a id="entry-anime-js"></a>

#### Anime.js

[仓库](<https://github.com/juliangarnier/anime>) ｜ Star **74,207** ｜ 许可证 **MIT** ｜ [短卡片](skills/anime-js.md)

**最适合：** 适合需要时间轴编排的 SVG、Logo、加载动画和轻量 DOM 动效。

**为什么值得看：** API 简洁、体积小，适合不依赖框架的精细动画编排。

**作者致谢：** 感谢 [@juliangarnier](<https://github.com/juliangarnier>) 与所有贡献者。

<a id="entry-motion"></a>

#### Motion (Framer Motion)

[仓库](<https://github.com/framer/motion>) ｜ Star **34,799** ｜ 许可证 **MIT** ｜ [短卡片](skills/motion.md)

**最适合：** 适合 React 产品里的页面转场、手势、滚动进度和微交互。

**为什么值得看：** 声明式动画 API，布局动画、手势和退出动画都很成熟，是 React 动效首选之一。

**作者致谢：** 感谢 [@motiondivision](<https://github.com/motiondivision>) 与所有贡献者。

<a id="entry-react-three-fiber"></a>

#### React Three Fiber

[仓库](<https://github.com/pmndrs/react-three-fiber>) ｜ Star **33,429** ｜ 许可证 **MIT** ｜ [短卡片](skills/react-three-fiber.md)

**最适合：** 适合 React 技术栈的 3D 产品配置器、沉浸式首屏和交互式场景。

**为什么值得看：** 把 three.js 变成 React 组件，配合 Drei 可快速搭出高质量 3D 界面。

**作者致谢：** 感谢 [@pmndrs](<https://github.com/pmndrs>) 与所有贡献者。

<a id="entry-aos"></a>

#### AOS

[仓库](<https://github.com/michalsnik/aos>) ｜ Star **28,046** ｜ 许可证 **MIT** ｜ [短卡片](skills/aos.md)

**最适合：** 适合传统静态页快速加滚动入场动画，成本最低。

**为什么值得看：** 一行 data 属性即可启用，适合老项目或轻量营销页。

**作者致谢：** 感谢 [@michalsnik](<https://github.com/michalsnik>) 与所有贡献者。

<a id="entry-lenis"></a>

#### Lenis

[仓库](<https://github.com/darkroomengineering/lenis>) ｜ Star **17,033** ｜ 许可证 **MIT** ｜ [短卡片](skills/lenis.md)

**最适合：** 适合高端品牌站、作品集和需要丝滑惯性滚动、滚动联动的页面。

**为什么值得看：** 轻量平滑滚动库，常与 GSAP/滚动动画配合，手感和性能都不错。

**作者致谢：** 感谢 [@darkroomengineering](<https://github.com/darkroomengineering>) 与所有贡献者。

<a id="entry-barba-js"></a>

#### Barba.js

[仓库](<https://github.com/barbajs/barba>) ｜ Star **12,998** ｜ 许可证 **MIT** ｜ [短卡片](skills/barba-js.md)

**最适合：** 适合多页站点做无刷新页面转场，同时保留 SEO 与真实 URL。

**为什么值得看：** 页面级转场方案，不需要改成 SPA 就能获得连贯的过渡体验。

**作者致谢：** 感谢 [@barbajs](<https://github.com/barbajs>) 与所有贡献者。

<a id="cat-7"></a>

### 7. 设计系统与 Token

10 个项目，按 Star 数从高到低排列。

<a id="entry-ant-design"></a>

#### Ant Design

[仓库](<https://github.com/ant-design/ant-design>) ｜ Star **100,041** ｜ 许可证 **MIT** ｜ [短卡片](skills/ant-design.md)

**最适合：** 适合中后台密集表单、表格、权限系统的企业级设计语言。

**为什么值得看：** 企业级组件与设计规范完整，中文生态和业务模板丰富。

**作者致谢：** 感谢 [@ant-design](<https://github.com/ant-design>) 与所有贡献者。

<a id="entry-material-ui"></a>

#### Material UI (MUI)

[仓库](<https://github.com/mui/material-ui>) ｜ Star **99,297** ｜ 许可证 **MIT** ｜ [短卡片](skills/material-ui.md)

**最适合：** 适合 React 中后台/SaaS，需要成熟组件和深度主题定制。

**为什么值得看：** 组件覆盖极广，主题、暗色模式和可访问性支持成熟，社区体量巨大。

**作者致谢：** 感谢 [@mui](<https://github.com/mui>) 与所有贡献者。

<a id="entry-tailwind-css"></a>

#### Tailwind CSS

[仓库](<https://github.com/tailwindlabs/tailwindcss>) ｜ Star **98,283** ｜ 许可证 **MIT** ｜ [短卡片](skills/tailwind-css.md)

**最适合：** 适合任何需要自定义视觉系统的前端，从营销页到后台。

**为什么值得看：** 原子化 CSS 的事实标准，配合设计 Token 能快速建立一致的视觉语言。

**作者致谢：** 感谢 [@tailwindlabs](<https://github.com/tailwindlabs>) 与所有贡献者。

<a id="entry-chakra-ui"></a>

#### Chakra UI

[仓库](<https://github.com/chakra-ui/chakra-ui>) ｜ Star **40,711** ｜ 许可证 **MIT** ｜ [短卡片](skills/chakra-ui.md)

**最适合：** 适合快速搭可访问的 React 产品界面，主题与暗色模式开箱即用。

**为什么值得看：** API 友好、无障碍默认到位，适合中小团队快速形成统一界面。

**作者致谢：** 感谢 [@chakra-ui](<https://github.com/chakra-ui>) 与所有贡献者。

<a id="entry-mantine"></a>

#### Mantine

[仓库](<https://github.com/mantinedev/mantine>) ｜ Star **31,897** ｜ 许可证 **MIT** ｜ [短卡片](skills/mantine.md)

**最适合：** 适合需要大量现成组件和 hooks 的 React 管理端/工具站。

**为什么值得看：** 组件、hooks、表单和日期库一体化，默认视觉现代，定制成本低。

**作者致谢：** 感谢 [@mantinedev](<https://github.com/mantinedev>) 与所有贡献者。

<a id="entry-headless-ui"></a>

#### Headless UI

[仓库](<https://github.com/tailwindlabs/headlessui>) ｜ Star **28,805** ｜ 许可证 **MIT** ｜ [短卡片](skills/headless-ui.md)

**最适合：** 适合想要完全掌控视觉、只复用交互与无障碍逻辑的 Tailwind 项目。

**为什么值得看：** 无样式组件把键盘导航、焦点管理和过渡逻辑处理好，设计自由度高。

**作者致谢：** 感谢 [@tailwindlabs](<https://github.com/tailwindlabs>) 与所有贡献者。

<a id="entry-fluent-ui"></a>

#### Fluent UI

[仓库](<https://github.com/microsoft/fluentui>) ｜ Star **20,383** ｜ 许可证 **MIT** ｜ [短卡片](skills/fluent-ui.md)

**最适合：** 适合微软风格的企业应用、Office 类生产力工具和需要高密度交互的产品。

**为什么值得看：** 微软官方设计系统，组件、主题、图标和可访问性规范齐全。

**许可证备注：** GitHub 未识别许可证，已核对仓库根目录 LICENSE 为 MIT。

**作者致谢：** 感谢 [@microsoft](<https://github.com/microsoft>) 与所有贡献者。

<a id="entry-radix-primitives"></a>

#### Radix Primitives

[仓库](<https://github.com/radix-ui/primitives>) ｜ Star **19,464** ｜ 许可证 **MIT** ｜ [短卡片](skills/radix-primitives.md)

**最适合：** 适合自建设计系统的团队，作为无障碍交互底座。

**为什么值得看：** 无样式、可组合、无障碍优先，是 shadcn/ui 等大量现代组件库的基础。

**作者致谢：** 感谢 [@radix-ui](<https://github.com/radix-ui>) 与所有贡献者。

<a id="entry-react-spectrum"></a>

#### React Spectrum

[仓库](<https://github.com/adobe/react-spectrum>) ｜ Star **16,006** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/react-spectrum.md)

**最适合：** 适合 Adobe 风格、复杂交互与国际化要求高的企业应用。

**为什么值得看：** Adobe 设计系统，表格、拖拽、日期等复杂组件的交互细节非常扎实。

**作者致谢：** 感谢 [@adobe](<https://github.com/adobe>) 与所有贡献者。

<a id="entry-carbon-design-system"></a>

#### Carbon Design System

[仓库](<https://github.com/carbon-design-system/carbon>) ｜ Star **9,596** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/carbon-design-system.md)

**最适合：** 适合 IBM 风格的大型企业后台、数据产品与设计规范落地。

**为什么值得看：** 完整的设计语言、组件和图表体系，适合需要强规范的大型组织。

**作者致谢：** 感谢 [@carbon-design-system](<https://github.com/carbon-design-system>) 与所有贡献者。

<a id="cat-8"></a>

### 8. UI 组件库

8 个项目，按 Star 数从高到低排列。

<a id="entry-bootstrap"></a>

#### Bootstrap

[仓库](<https://github.com/twbs/bootstrap>) ｜ Star **174,968** ｜ 许可证 **MIT** ｜ [短卡片](skills/bootstrap.md)

**最适合：** 适合传统企业站、快速原型和需要稳定栅格与组件的老项目。

**为什么值得看：** 最普及的前端 UI 框架，文档、示例和第三方生态极其丰富。

**作者致谢：** 感谢 [@twbs](<https://github.com/twbs>) 与所有贡献者。

<a id="entry-shadcn-ui"></a>

#### shadcn/ui

[仓库](<https://github.com/shadcn-ui/ui>) ｜ Star **127,161** ｜ 许可证 **MIT** ｜ [短卡片](skills/shadcn-ui.md)

**最适合：** 适合 AI 生成式 UI、SaaS 后台与营销站，代码可直接掌控。

**为什么值得看：** 组件代码直接复制进项目，基于 Radix + Tailwind，现代且不被库锁定。

**作者致谢：** 感谢 [@shadcn-ui](<https://github.com/shadcn-ui>) 与所有贡献者。

<a id="entry-ionic-framework"></a>

#### Ionic Framework

[仓库](<https://github.com/ionic-team/ionic-framework>) ｜ Star **52,736** ｜ 许可证 **MIT** ｜ [短卡片](skills/ionic-framework.md)

**最适合：** 适合一套代码做移动端 Web/混合 App，接近原生交互。

**为什么值得看：** 移动端组件与手势体系成熟，可配合 React/Vue/Angular 和 Capacitor。

**作者致谢：** 感谢 [@ionic-team](<https://github.com/ionic-team>) 与所有贡献者。

<a id="entry-semantic-ui"></a>

#### Semantic UI

[仓库](<https://github.com/semantic-org/Semantic-UI>) ｜ Star **51,004** ｜ 许可证 **MIT** ｜ [短卡片](skills/semantic-ui.md)

**最适合：** 适合老项目维护或需要语义化类名的快速页面。

**为什么值得看：** 自然语言式类名降低学习成本，适合遗留系统和教学示例。

**作者致谢：** 感谢 [@Semantic-Org](<https://github.com/Semantic-Org>) 与所有贡献者。

<a id="entry-bulma"></a>

#### Bulma

[仓库](<https://github.com/jgthms/bulma>) ｜ Star **50,035** ｜ 许可证 **MIT** ｜ [短卡片](skills/bulma.md)

**最适合：** 适合纯 CSS、无 JS 依赖的轻量营销页、博客和简单后台。

**为什么值得看：** 只依赖 CSS，栅格和组件清晰，适合不想引入 JS 框架的项目。

**作者致谢：** 感谢 [@jgthms](<https://github.com/jgthms>) 与所有贡献者。

<a id="entry-vuetify"></a>

#### Vuetify

[仓库](<https://github.com/vuetifyjs/vuetify>) ｜ Star **41,032** ｜ 许可证 **MIT** ｜ [短卡片](skills/vuetify.md)

**最适合：** 适合 Vue 3 中后台与 Material 风格的完整组件体系。

**为什么值得看：** Vue 生态最完整的 Material 组件库，表单、表格和布局组件覆盖广。

**许可证备注：** GitHub 未识别许可证，已核对 packages/vuetify/LICENSE.md 为 MIT。

**作者致谢：** 感谢 [@vuetifyjs](<https://github.com/vuetifyjs>) 与所有贡献者。

<a id="entry-heroui"></a>

#### HeroUI

[仓库](<https://github.com/heroui-inc/heroui>) ｜ Star **31,085** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/heroui.md)

**最适合：** 适合 React/Next.js 现代 SaaS，想要动效和精美默认样式的产品界面。

**为什么值得看：** 由 NextUI 演进而来，默认视觉精致，动效和暗色模式体验好。

**作者致谢：** 感谢 [@heroui-inc](<https://github.com/heroui-inc>) 与所有贡献者。

<a id="entry-element-plus"></a>

#### Element Plus

[仓库](<https://github.com/element-plus/element-plus>) ｜ Star **27,834** ｜ 许可证 **MIT** ｜ [短卡片](skills/element-plus.md)

**最适合：** 适合 Vue 3 中后台、表单表格密集的业务系统和国内企业项目。

**为什么值得看：** Element UI 的 Vue 3 继任者，中文文档与业务组件生态成熟。

**作者致谢：** 感谢 [@element-plus](<https://github.com/element-plus>) 与所有贡献者。

<a id="cat-9"></a>

### 9. 排版、字体与图标

7 个项目，按 Star 数从高到低排列。

<a id="entry-fira-code"></a>

#### Fira Code

[仓库](<https://github.com/tonsky/FiraCode>) ｜ Star **82,165** ｜ 许可证 **OFL-1.1** ｜ [短卡片](skills/fira-code.md)

**最适合：** 适合开发者文档、技术产品官网的代码展示与等宽排版。

**为什么值得看：** 带编程连字的等宽字体，代码可读性和品牌感兼顾。

**作者致谢：** 感谢 [@tonsky](<https://github.com/tonsky>) 与所有贡献者。

<a id="entry-material-design-icons"></a>

#### Material Design Icons

[仓库](<https://github.com/google/material-design-icons>) ｜ Star **54,215** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/material-design-icons.md)

**最适合：** 适合需要完整 Material 图标集的 Web 与移动端产品。

**为什么值得看：** Google 官方图标库，覆盖极广，风格统一，适合 Material 体系。

**作者致谢：** 感谢 [@google](<https://github.com/google>) 与所有贡献者。

<a id="entry-simple-icons"></a>

#### Simple Icons

[仓库](<https://github.com/simple-icons/simple-icons>) ｜ Star **26,123** ｜ 许可证 **CC0-1.0** ｜ [短卡片](skills/simple-icons.md)

**最适合：** 适合品牌墙、社交链接和技术栈展示，统一 SVG 品牌图标。

**为什么值得看：** 收录大量品牌 SVG，许可证清晰，适合做合作方/技术栈展示。

**作者致谢：** 感谢 [@simple-icons](<https://github.com/simple-icons>) 与所有贡献者。

<a id="entry-lucide"></a>

#### Lucide

[仓库](<https://github.com/lucide-icons/lucide>) ｜ Star **25,461** ｜ 许可证 **ISC** ｜ [短卡片](skills/lucide.md)

**最适合：** 适合现代 SaaS/工具的线性图标系统，风格统一且可定制。

**为什么值得看：** Feather 的现代继任者，图标一致性强，支持多框架和 SVG 定制。

**许可证备注：** GitHub 未识别许可证，已核对仓库根目录 LICENSE 为 ISC。

**作者致谢：** 感谢 [@lucide-icons](<https://github.com/lucide-icons>) 与所有贡献者。

<a id="entry-heroicons"></a>

#### Heroicons

[仓库](<https://github.com/tailwindlabs/heroicons>) ｜ Star **23,895** ｜ 许可证 **MIT** ｜ [短卡片](skills/heroicons.md)

**最适合：** 适合 Tailwind 项目的手工打磨线性/实心图标。

**为什么值得看：** Tailwind 官方图标集，尺寸和笔画经过打磨，和 Tailwind 视觉天然匹配。

**作者致谢：** 感谢 [@tailwindlabs](<https://github.com/tailwindlabs>) 与所有贡献者。

<a id="entry-tabler-icons"></a>

#### Tabler Icons

[仓库](<https://github.com/tabler/tabler-icons>) ｜ Star **22,525** ｜ 许可证 **MIT** ｜ [短卡片](skills/tabler-icons.md)

**最适合：** 适合后台/仪表盘的高密度图标需求，覆盖广。

**为什么值得看：** 数千个统一风格的 SVG 图标，适合需要大量功能入口的管理界面。

**作者致谢：** 感谢 [@tabler](<https://github.com/tabler>) 与所有贡献者。

<a id="entry-inter"></a>

#### Inter

[仓库](<https://github.com/rsms/inter>) ｜ Star **20,025** ｜ 许可证 **OFL-1.1** ｜ [短卡片](skills/inter.md)

**最适合：** 适合 UI 正文与数据表格，屏幕可读性优先的产品界面。

**为什么值得看：** 为屏幕阅读优化的无衬线字体，字重完整，是 SaaS 界面的安全选择。

**作者致谢：** 感谢 [@rsms](<https://github.com/rsms>) 与所有贡献者。

<a id="cat-10"></a>

### 10. 数据可视化

6 个项目，按 Star 数从高到低排列。

<a id="entry-d3-js"></a>

#### D3.js

[仓库](<https://github.com/d3/d3>) ｜ Star **113,856** ｜ 许可证 **ISC** ｜ [短卡片](skills/d3-js.md)

**最适合：** 适合需要完全自定义的数据可视化、交互式图表和地理可视化。

**为什么值得看：** 最底层的可视化工具箱，控制力极强，适合做独特的数据叙事。

**作者致谢：** 感谢 [@d3](<https://github.com/d3>) 与所有贡献者。

<a id="entry-chart-js"></a>

#### Chart.js

[仓库](<https://github.com/chartjs/Chart.js>) ｜ Star **67,773** ｜ 许可证 **MIT** ｜ [短卡片](skills/chart-js.md)

**最适合：** 适合快速上线的常规折线/柱状/饼图，配置简单。

**为什么值得看：** Canvas 图表库，API 直观，适合中小型仪表盘和报表。

**作者致谢：** 感谢 [@chartjs](<https://github.com/chartjs>) 与所有贡献者。

<a id="entry-apache-echarts"></a>

#### Apache ECharts

[仓库](<https://github.com/apache/echarts>) ｜ Star **67,663** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/apache-echarts.md)

**最适合：** 适合中文业务后台、大屏和复杂联动图表。

**为什么值得看：** 图表类型和交互能力极全，中文文档完善，适合运营大屏。

**作者致谢：** 感谢 [@apache](<https://github.com/apache>) 与所有贡献者。

<a id="entry-recharts"></a>

#### Recharts

[仓库](<https://github.com/recharts/recharts>) ｜ Star **27,681** ｜ 许可证 **MIT** ｜ [短卡片](skills/recharts.md)

**最适合：** 适合 React 仪表盘里的组合图表，组件化接入最快。

**为什么值得看：** 基于 D3 的 React 图表库，组合式 API 直观，和 React 生态贴合。

**作者致谢：** 感谢 [@recharts](<https://github.com/recharts>) 与所有贡献者。

<a id="entry-visx"></a>

#### Visx

[仓库](<https://github.com/airbnb/visx>) ｜ Star **21,093** ｜ 许可证 **MIT** ｜ [短卡片](skills/visx.md)

**最适合：** 适合需要低层 SVG 控制、又不想从零写 D3 的 React 数据产品。

**为什么值得看：** Airbnb 的可组合可视化原语，兼顾 D3 能力和 React 组件化。

**作者致谢：** 感谢 [@airbnb](<https://github.com/airbnb>) 与所有贡献者。

<a id="entry-plotly-js"></a>

#### Plotly.js

[仓库](<https://github.com/plotly/plotly.js>) ｜ Star **18,377** ｜ 许可证 **MIT** ｜ [短卡片](skills/plotly-js.md)

**最适合：** 适合科研/金融分析型图表，需要 3D、统计图和导出能力。

**为什么值得看：** 科学计算级图表库，图表类型和交互丰富，适合分析型产品。

**作者致谢：** 感谢 [@plotly](<https://github.com/plotly>) 与所有贡献者。

<a id="cat-11"></a>

### 11. 视觉编辑器与 AI 辅助出稿

5 个项目，按 Star 数从高到低排列。

<a id="entry-excalidraw"></a>

#### Excalidraw

[仓库](<https://github.com/excalidraw/excalidraw>) ｜ Star **135,017** ｜ 许可证 **MIT** ｜ [短卡片](skills/excalidraw.md)

**最适合：** 适合手绘风格架构图、流程草图和白板协作。

**为什么值得看：** 开源白板的事实标准，手绘视觉亲和，适合文档配图和远程讨论。

**作者致谢：** 感谢 [@excalidraw](<https://github.com/excalidraw>) 与所有贡献者。

<a id="entry-screenshot-to-code"></a>

#### Screenshot to Code

[仓库](<https://github.com/abi/screenshot-to-code>) ｜ Star **80,977** ｜ 许可证 **MIT** ｜ [短卡片](skills/screenshot-to-code.md)

**最适合：** 适合从设计截图快速生成可运行 HTML/Tailwind 页面原型。

**为什么值得看：** 截图转代码的代表项目，适合快速验证视觉方向或做设计交付加速。

**作者致谢：** 感谢 [@abi](<https://github.com/abi>) 与所有贡献者。

<a id="entry-penpot"></a>

#### Penpot

[仓库](<https://github.com/penpot/penpot>) ｜ Star **61,979** ｜ 许可证 **MPL-2.0** ｜ [短卡片](skills/penpot.md)

**最适合：** 适合开源替代 Figma 的团队设计稿、设计系统和交付流程。

**为什么值得看：** 开源设计与协作平台，支持设计稿、原型和设计 Token，自托管友好。

**作者致谢：** 感谢 [@penpot](<https://github.com/penpot>) 与所有贡献者。

<a id="entry-onlook"></a>

#### Onlook

[仓库](<https://github.com/onlook-dev/onlook>) ｜ Star **27,080** ｜ 许可证 **Apache-2.0** ｜ [短卡片](skills/onlook.md)

**最适合：** 适合在真实 React 页面里做可视化编辑与 AI 改稿。

**为什么值得看：** 面向 React/Tailwind 的可视化编辑器，把设计操作直接落到代码。

**作者致谢：** 感谢 [@onlook-dev](<https://github.com/onlook-dev>) 与所有贡献者。

<a id="entry-mitosis"></a>

#### Mitosis

[仓库](<https://github.com/BuilderIO/mitosis>) ｜ Star **14,453** ｜ 许可证 **MIT** ｜ [短卡片](skills/mitosis.md)

**最适合：** 适合一次设计稿/组件代码编译到 React/Vue/Svelte/Angular 多端。

**为什么值得看：** Builder.io 的跨框架编译方案，适合维护多技术栈组件库。

**作者致谢：** 感谢 [@BuilderIO](<https://github.com/BuilderIO>) 与所有贡献者。

<a id="cat-12"></a>

### 12. 演示、图形与视觉叙事

5 个项目，按 Star 数从高到低排列。

<a id="entry-mermaid"></a>

#### Mermaid

[仓库](<https://github.com/mermaid-js/mermaid>) ｜ Star **90,976** ｜ 许可证 **MIT** ｜ [短卡片](skills/mermaid.md)

**最适合：** 适合文档里的流程图、时序图、ER 图，文本即图表。

**为什么值得看：** Markdown 友好的图表语法，GitHub、文档站和 IDE 都原生支持。

**作者致谢：** 感谢 [@mermaid-js](<https://github.com/mermaid-js>) 与所有贡献者。

<a id="entry-reveal-js"></a>

#### Reveal.js

[仓库](<https://github.com/hakimel/reveal.js>) ｜ Star **72,505** ｜ 许可证 **MIT** ｜ [短卡片](skills/reveal-js.md)

**最适合：** 适合技术分享、产品发布，用 HTML 做可交互演示文稿。

**为什么值得看：** 老牌 HTML 演示框架，支持 Markdown、代码高亮、演讲者视图。

**作者致谢：** 感谢 [@hakimel](<https://github.com/hakimel>) 与所有贡献者。

<a id="entry-slidev"></a>

#### Slidev

[仓库](<https://github.com/slidevjs/slidev>) ｜ Star **49,331** ｜ 许可证 **MIT** ｜ [短卡片](skills/slidev.md)

**最适合：** 适合开发者大会、技术培训，Markdown 写幻灯片并带代码高亮。

**为什么值得看：** 为开发者设计的演示工具，代码、动画和主题都很强。

**作者致谢：** 感谢 [@slidevjs](<https://github.com/slidevjs>) 与所有贡献者。

<a id="entry-react-flow"></a>

#### React Flow

[仓库](<https://github.com/xyflow/xyflow>) ｜ Star **38,866** ｜ 许可证 **MIT** ｜ [短卡片](skills/react-flow.md)

**最适合：** 适合节点编辑器、工作流编排和 AI Agent 流程可视化。

**为什么值得看：** 成熟的节点/连线交互引擎，拖拽、缩放、连线和自定义节点齐全。

**作者致谢：** 感谢 [@xyflow](<https://github.com/xyflow>) 与所有贡献者。

<a id="entry-marp"></a>

#### Marp

[仓库](<https://github.com/marp-team/marp>) ｜ Star **12,709** ｜ 许可证 **MIT** ｜ [短卡片](skills/marp.md)

**最适合：** 适合从 Markdown 快速生成品牌一致的技术演示和课件。

**为什么值得看：** Markdown 转幻灯片，主题可定制，适合批量产出技术内容。

**作者致谢：** 感谢 [@marp-team](<https://github.com/marp-team>) 与所有贡献者。

## 汇总表

| # | 名称 | 类别 | Star | 许可证 | 最适合 |
| --- | --- | --- | ---: | --- | --- |
| 1 | [Magic UI](<https://github.com/magicuidesign/magicui>) | 落地页与营销页 | 23,037 | MIT | 适合 AI / SaaS 产品的营销首屏，用粒子、光束、跑马灯和数字动效制造记忆点。 |
| 2 | [Taxonomy](<https://github.com/shadcn-ui/taxonomy>) | 落地页与营销页 | 19,291 | MIT | 适合带登录、订阅与文档的 SaaS 产品站，尤其是 shadcn 风格的营销首屏、定价页和博客组合。 |
| 3 | [Flowbite](<https://github.com/themesberg/flowbite>) | 落地页与营销页 | 9,382 | MIT | 适合中小团队用 Tailwind 快速拼出营销页、价格页、博客和后台界面。 |
| 4 | [Material Kit React](<https://github.com/devias-io/material-kit-react>) | 落地页与营销页 | 5,581 | MIT | 适合需要成套 MUI 营销区块的 SaaS 官网，Hero、Features、Pricing、Testimonials 可直接替换文案。 |
| 5 | [Material Tailwind](<https://github.com/creativetimofficial/material-tailwind>) | 落地页与营销页 | 4,363 | MIT | 适合想要 Material 质感又不想放弃 Tailwind 效率的产品官网与营销页。 |
| 6 | [Apache Superset](<https://github.com/apache/superset>) | SaaS 控制台与仪表盘 | 75,387 | Apache-2.0 | 适合数据密集型的内部 BI 控制台、运营分析台和可配置的大屏。 |
| 7 | [AdminLTE](<https://github.com/ColorlibHQ/AdminLTE>) | SaaS 控制台与仪表盘 | 45,672 | MIT | 适合传统后台、运维面板和 CRUD 管理系统，尤其是需要快速落地的 Bootstrap 项目。 |
| 8 | [Tabler](<https://github.com/Tabler/tabler>) | SaaS 控制台与仪表盘 | 41,987 | MIT | 适合干净、密度适中的 SaaS 管理后台、监控台和项目工作台。 |
| 9 | [Appsmith](<https://github.com/appsmithorg/appsmith>) | SaaS 控制台与仪表盘 | 41,149 | Apache-2.0 | 适合低代码内部工具、运营后台和把表格/表单/图表快速拼成工作台的场景。 |
| 10 | [Refine](<https://github.com/refinedev/refine>) | SaaS 控制台与仪表盘 | 35,980 | MIT | 适合 React 内部工具、管理后台和需要快速接 REST/GraphQL 的 CRUD 产品。 |
| 11 | [Tremor](<https://github.com/tremorlabs/tremor>) | SaaS 控制台与仪表盘 | 3,686 | Apache-2.0 | 适合以 KPI 卡片、趋势图、状态条为核心的现代 SaaS 仪表盘。 |
| 12 | [Saleor](<https://github.com/saleor/saleor>) | 电商与商业转化 | 23,500 | BSD-3-Clause | 适合需要 GraphQL 头less 电商后端与高度定制店面的中大型商业项目。 |
| 13 | [Spree Commerce](<https://github.com/spree/spree>) | 电商与商业转化 | 15,805 | BSD-3-Clause | 适合 Ruby/Rails 技术栈的电商后台、多店铺运营和需要深度定制的交易流程。 |
| 14 | [Sylius](<https://github.com/sylius/sylius>) | 电商与商业转化 | 8,564 | MIT | 适合 PHP/Symfony 电商，尤其是复杂商品模型、多语言和多市场场景。 |
| 15 | [Simplefolio](<https://github.com/cobiwave/simplefolio>) | 作品集与个人站 | 14,220 | MIT | 适合快速上线一个干净的开发者作品集，重点突出项目卡片和简历下载。 |
| 16 | [v4 (Brittany Chiang Portfolio)](<https://github.com/bchiang7/v4>) | 作品集与个人站 | 8,290 | MIT | 适合开发者个人作品集，想要深色极简、强排版和单页叙事的高级感。 |
| 17 | [VCard Personal Portfolio](<https://github.com/codewithsadee/vcard-personal-portfolio>) | 作品集与个人站 | 8,159 | MIT | 适合个人简历式名片站，单页展示头像、技能、项目与联系方式。 |
| 18 | [MasterPortfolio](<https://github.com/ashutosh1919/masterPortfolio>) | 作品集与个人站 | 4,225 | MIT | 适合想要丰富模块（关于、技能、经历、项目、博客）的个人品牌站。 |
| 19 | [Docusaurus](<https://github.com/facebook/docusaurus>) | 文档站与内容站 | 66,637 | MIT | 适合产品文档、开发者文档和需要版本化/国际化/博客的内容站。 |
| 20 | [Docsify](<https://github.com/docsifyjs/docsify>) | 文档站与内容站 | 31,574 | MIT | 适合轻量 Markdown 文档站，不想引入构建流程、直接静态托管即可。 |
| 21 | [MkDocs Material](<https://github.com/squidfunk/mkdocs-material>) | 文档站与内容站 | 27,594 | MIT | 适合技术手册、知识库和需要精致导航、搜索、代码高亮的文档站。 |
| 22 | [mdBook](<https://github.com/rust-lang/mdBook>) | 文档站与内容站 | 22,258 | MPL-2.0 | 适合 Rust/CLI 工具书式文档，生成可离线阅读的电子书。 |
| 23 | [Hugo PaperMod](<https://github.com/adityatelange/hugo-PaperMod>) | 文档站与内容站 | 14,024 | MIT | 适合博客、技术写作和偏内容型的个人站，追求极简、快和 SEO 友好。 |
| 24 | [Nextra](<https://github.com/shuding/nextra>) | 文档站与内容站 | 13,947 | MIT | 适合 Next.js 生态的文档 + 博客混合站，需要 MDX 与内置主题。 |
| 25 | [Starlight](<https://github.com/withastro/starlight>) | 文档站与内容站 | 9,510 | MIT | 适合 Astro 项目的开发者文档站，轻量且可访问性好的默认设计。 |
| 26 | [three.js](<https://github.com/mrdoob/three.js>) | 动效与滚动叙事 | 117,412 | MIT | 适合需要 3D 产品展示、WebGL 首屏和空间叙事的品牌站。 |
| 27 | [Anime.js](<https://github.com/juliangarnier/anime>) | 动效与滚动叙事 | 74,207 | MIT | 适合需要时间轴编排的 SVG、Logo、加载动画和轻量 DOM 动效。 |
| 28 | [Motion (Framer Motion)](<https://github.com/framer/motion>) | 动效与滚动叙事 | 34,799 | MIT | 适合 React 产品里的页面转场、手势、滚动进度和微交互。 |
| 29 | [React Three Fiber](<https://github.com/pmndrs/react-three-fiber>) | 动效与滚动叙事 | 33,429 | MIT | 适合 React 技术栈的 3D 产品配置器、沉浸式首屏和交互式场景。 |
| 30 | [AOS](<https://github.com/michalsnik/aos>) | 动效与滚动叙事 | 28,046 | MIT | 适合传统静态页快速加滚动入场动画，成本最低。 |
| 31 | [Lenis](<https://github.com/darkroomengineering/lenis>) | 动效与滚动叙事 | 17,033 | MIT | 适合高端品牌站、作品集和需要丝滑惯性滚动、滚动联动的页面。 |
| 32 | [Barba.js](<https://github.com/barbajs/barba>) | 动效与滚动叙事 | 12,998 | MIT | 适合多页站点做无刷新页面转场，同时保留 SEO 与真实 URL。 |
| 33 | [Ant Design](<https://github.com/ant-design/ant-design>) | 设计系统与 Token | 100,041 | MIT | 适合中后台密集表单、表格、权限系统的企业级设计语言。 |
| 34 | [Material UI (MUI)](<https://github.com/mui/material-ui>) | 设计系统与 Token | 99,297 | MIT | 适合 React 中后台/SaaS，需要成熟组件和深度主题定制。 |
| 35 | [Tailwind CSS](<https://github.com/tailwindlabs/tailwindcss>) | 设计系统与 Token | 98,283 | MIT | 适合任何需要自定义视觉系统的前端，从营销页到后台。 |
| 36 | [Chakra UI](<https://github.com/chakra-ui/chakra-ui>) | 设计系统与 Token | 40,711 | MIT | 适合快速搭可访问的 React 产品界面，主题与暗色模式开箱即用。 |
| 37 | [Mantine](<https://github.com/mantinedev/mantine>) | 设计系统与 Token | 31,897 | MIT | 适合需要大量现成组件和 hooks 的 React 管理端/工具站。 |
| 38 | [Headless UI](<https://github.com/tailwindlabs/headlessui>) | 设计系统与 Token | 28,805 | MIT | 适合想要完全掌控视觉、只复用交互与无障碍逻辑的 Tailwind 项目。 |
| 39 | [Fluent UI](<https://github.com/microsoft/fluentui>) | 设计系统与 Token | 20,383 | MIT | 适合微软风格的企业应用、Office 类生产力工具和需要高密度交互的产品。 |
| 40 | [Radix Primitives](<https://github.com/radix-ui/primitives>) | 设计系统与 Token | 19,464 | MIT | 适合自建设计系统的团队，作为无障碍交互底座。 |
| 41 | [React Spectrum](<https://github.com/adobe/react-spectrum>) | 设计系统与 Token | 16,006 | Apache-2.0 | 适合 Adobe 风格、复杂交互与国际化要求高的企业应用。 |
| 42 | [Carbon Design System](<https://github.com/carbon-design-system/carbon>) | 设计系统与 Token | 9,596 | Apache-2.0 | 适合 IBM 风格的大型企业后台、数据产品与设计规范落地。 |
| 43 | [Bootstrap](<https://github.com/twbs/bootstrap>) | UI 组件库 | 174,968 | MIT | 适合传统企业站、快速原型和需要稳定栅格与组件的老项目。 |
| 44 | [shadcn/ui](<https://github.com/shadcn-ui/ui>) | UI 组件库 | 127,161 | MIT | 适合 AI 生成式 UI、SaaS 后台与营销站，代码可直接掌控。 |
| 45 | [Ionic Framework](<https://github.com/ionic-team/ionic-framework>) | UI 组件库 | 52,736 | MIT | 适合一套代码做移动端 Web/混合 App，接近原生交互。 |
| 46 | [Semantic UI](<https://github.com/semantic-org/Semantic-UI>) | UI 组件库 | 51,004 | MIT | 适合老项目维护或需要语义化类名的快速页面。 |
| 47 | [Bulma](<https://github.com/jgthms/bulma>) | UI 组件库 | 50,035 | MIT | 适合纯 CSS、无 JS 依赖的轻量营销页、博客和简单后台。 |
| 48 | [Vuetify](<https://github.com/vuetifyjs/vuetify>) | UI 组件库 | 41,032 | MIT | 适合 Vue 3 中后台与 Material 风格的完整组件体系。 |
| 49 | [HeroUI](<https://github.com/heroui-inc/heroui>) | UI 组件库 | 31,085 | Apache-2.0 | 适合 React/Next.js 现代 SaaS，想要动效和精美默认样式的产品界面。 |
| 50 | [Element Plus](<https://github.com/element-plus/element-plus>) | UI 组件库 | 27,834 | MIT | 适合 Vue 3 中后台、表单表格密集的业务系统和国内企业项目。 |
| 51 | [Fira Code](<https://github.com/tonsky/FiraCode>) | 排版、字体与图标 | 82,165 | OFL-1.1 | 适合开发者文档、技术产品官网的代码展示与等宽排版。 |
| 52 | [Material Design Icons](<https://github.com/google/material-design-icons>) | 排版、字体与图标 | 54,215 | Apache-2.0 | 适合需要完整 Material 图标集的 Web 与移动端产品。 |
| 53 | [Simple Icons](<https://github.com/simple-icons/simple-icons>) | 排版、字体与图标 | 26,123 | CC0-1.0 | 适合品牌墙、社交链接和技术栈展示，统一 SVG 品牌图标。 |
| 54 | [Lucide](<https://github.com/lucide-icons/lucide>) | 排版、字体与图标 | 25,461 | ISC | 适合现代 SaaS/工具的线性图标系统，风格统一且可定制。 |
| 55 | [Heroicons](<https://github.com/tailwindlabs/heroicons>) | 排版、字体与图标 | 23,895 | MIT | 适合 Tailwind 项目的手工打磨线性/实心图标。 |
| 56 | [Tabler Icons](<https://github.com/tabler/tabler-icons>) | 排版、字体与图标 | 22,525 | MIT | 适合后台/仪表盘的高密度图标需求，覆盖广。 |
| 57 | [Inter](<https://github.com/rsms/inter>) | 排版、字体与图标 | 20,025 | OFL-1.1 | 适合 UI 正文与数据表格，屏幕可读性优先的产品界面。 |
| 58 | [D3.js](<https://github.com/d3/d3>) | 数据可视化 | 113,856 | ISC | 适合需要完全自定义的数据可视化、交互式图表和地理可视化。 |
| 59 | [Chart.js](<https://github.com/chartjs/Chart.js>) | 数据可视化 | 67,773 | MIT | 适合快速上线的常规折线/柱状/饼图，配置简单。 |
| 60 | [Apache ECharts](<https://github.com/apache/echarts>) | 数据可视化 | 67,663 | Apache-2.0 | 适合中文业务后台、大屏和复杂联动图表。 |
| 61 | [Recharts](<https://github.com/recharts/recharts>) | 数据可视化 | 27,681 | MIT | 适合 React 仪表盘里的组合图表，组件化接入最快。 |
| 62 | [Visx](<https://github.com/airbnb/visx>) | 数据可视化 | 21,093 | MIT | 适合需要低层 SVG 控制、又不想从零写 D3 的 React 数据产品。 |
| 63 | [Plotly.js](<https://github.com/plotly/plotly.js>) | 数据可视化 | 18,377 | MIT | 适合科研/金融分析型图表，需要 3D、统计图和导出能力。 |
| 64 | [Excalidraw](<https://github.com/excalidraw/excalidraw>) | 视觉编辑器与 AI 辅助出稿 | 135,017 | MIT | 适合手绘风格架构图、流程草图和白板协作。 |
| 65 | [Screenshot to Code](<https://github.com/abi/screenshot-to-code>) | 视觉编辑器与 AI 辅助出稿 | 80,977 | MIT | 适合从设计截图快速生成可运行 HTML/Tailwind 页面原型。 |
| 66 | [Penpot](<https://github.com/penpot/penpot>) | 视觉编辑器与 AI 辅助出稿 | 61,979 | MPL-2.0 | 适合开源替代 Figma 的团队设计稿、设计系统和交付流程。 |
| 67 | [Onlook](<https://github.com/onlook-dev/onlook>) | 视觉编辑器与 AI 辅助出稿 | 27,080 | Apache-2.0 | 适合在真实 React 页面里做可视化编辑与 AI 改稿。 |
| 68 | [Mitosis](<https://github.com/BuilderIO/mitosis>) | 视觉编辑器与 AI 辅助出稿 | 14,453 | MIT | 适合一次设计稿/组件代码编译到 React/Vue/Svelte/Angular 多端。 |
| 69 | [Mermaid](<https://github.com/mermaid-js/mermaid>) | 演示、图形与视觉叙事 | 90,976 | MIT | 适合文档里的流程图、时序图、ER 图，文本即图表。 |
| 70 | [Reveal.js](<https://github.com/hakimel/reveal.js>) | 演示、图形与视觉叙事 | 72,505 | MIT | 适合技术分享、产品发布，用 HTML 做可交互演示文稿。 |
| 71 | [Slidev](<https://github.com/slidevjs/slidev>) | 演示、图形与视觉叙事 | 49,331 | MIT | 适合开发者大会、技术培训，Markdown 写幻灯片并带代码高亮。 |
| 72 | [React Flow](<https://github.com/xyflow/xyflow>) | 演示、图形与视觉叙事 | 38,866 | MIT | 适合节点编辑器、工作流编排和 AI Agent 流程可视化。 |
| 73 | [Marp](<https://github.com/marp-team/marp>) | 演示、图形与视觉叙事 | 12,709 | MIT | 适合从 Markdown 快速生成品牌一致的技术演示和课件。 |

## 数据统计

| 指标 | 数值 |
| --- | --- |
| 条目总数 | 73 |
| 分类数 | 12 |
| Star 总数 | 3,066,829 |
| Star 中位数 | 28,046 |
| 最低 Star | 3,686 |
| 最高 Star | 174,968 |

许可证分布：

| 许可证 | 数量 |
| --- | ---: |
| MIT | 55 |
| Apache-2.0 | 9 |
| BSD-3-Clause | 2 |
| ISC | 2 |
| MPL-2.0 | 2 |
| OFL-1.1 | 2 |
| CC0-1.0 | 1 |

## 被排除的项目与原因

为保证合集可用、可商用、可长期维护，以下类型被主动排除：

- **已归档**：picocss/pico、vercel/commerce、shoelace-style/shoelace、vercel/nextjs-subscription-payments、Shopify/polaris、1hanzla100/developer-portfolio。归档项目不再接收维护，不纳入推荐。
- **许可证不达标**：mattboldt/typed.js 为 GPL-3.0；saleor/storefront 为 FSL-1.1（source-available，带商用限制）；medusajs/medusa 核心为 MIT 但包含 Enterprise Edition 限制；apexcharts/apexcharts.js 为双许可模式；ariakit/ariakit、leerob/leerob.io、scrollreveal/scrollreveal、cruip 的两个模板、google/fonts 未提供统一根许可证（或需逐字体核对），均不纳入。
- **商业授权 / 自定义许可**：GSAP（GreenSock 标准许可）、tldraw（tldraw license）、Tailwind UI / Aceternity UI 等付费或 source-available 产品不属于开源许可范围。
- **Star 门槛**：低于 3,000 Star 的垂直项目（例如 Shopify/hydrogen 2,163、startbootstrap-agency 2,034、designrevision/shards-ui 1,709）暂不收录，避免合集被小型模板稀释。

## 数据核对与复现

所有数据来自 GitHub 公开仓库元数据，可用下面的命令逐条复核（需要已登录的 ``gh``）：

```bash
gh api repos/shadcn-ui/ui --jq '{stars: .stargazers_count, license: .license.spdx_id, archived: .archived, owner: .owner.login}'
```

本仓库的复现链路：

1. ``data/curation.json``：人工整理的项目、分类、适用场景与短评。
2. ``scripts/build-data.ps1``：逐条调用 ``gh api``，写入实时 Star / 许可证 / 归档状态，生成 ``data/repos.json``。
3. ``scripts/build-docs.ps1``：由 ``data/repos.json`` 渲染 README 与 ``skills/`` 卡片，保证三者一致。
4. ``scripts/verify.ps1``：重新拉取 GitHub 数据并核对 README 表格、Star 数、许可证与条目数。

## 贡献指南

欢迎补充项目，请满足以下条件：

1. 仓库仍在维护、未归档，Star ≥ 3,000（特别优秀的垂直项目可说明理由）。
2. 具备明确的开源许可证（MIT / Apache-2.0 / BSD / ISC / MPL-2.0 / CC / OFL 等），不接受 source-available 或自定义商用限制。
3. 与前端设计直接相关：UI、设计系统、模板、动效、字体图标、数据可视化、设计工具或 AI 出稿。
4. 在 ``data/curation.json`` 增加条目（名称、仓库、分类、最适合、为什么值得看），运行生成脚本，不要在 README 里手工改表。
5. 提交前运行 ``pwsh ./scripts/verify.ps1``，确保没有重复、没有失效链接、许可证非空。

## 免责声明

本仓库**只做收集与整理，不拥有任何上游项目的版权**。所有代码、设计、字体、图标与商标版权归原作者及贡献者所有，使用时请遵守各项目自己的许可证。

Star 数与许可证是 2026-11-02 的快照，会随时间变化；收录不代表安全审计或商业适用性背书，生产使用前请自行复核许可证与供应链风险。

本合集文档采用 [CC BY 4.0](LICENSE) 许可；各上游项目仍保留其原始许可证。

## 目录

- [README.md](README.md)：分类说明、逐条点评与汇总表
- [目录索引.xlsx](目录索引.xlsx)：可筛选的表格索引
- [skills/](skills/)：每个项目一张短卡片
- [data/repos.json](data/repos.json)：结构化数据源
- [scripts/](scripts/)：采集、生成与校验脚本

