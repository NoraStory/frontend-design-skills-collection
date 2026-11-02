<div align="center">

# 开源前端设计技能合集

**73 个高星、许可证清晰的 open-source 前端设计项目，按使用场景整理。**

![项目数](https://img.shields.io/badge/projects-73-111827?style=flat-square)
![许可证](https://img.shields.io/badge/licenses-MIT%20%7C%20Apache--2.0%20%7C%20BSD%20%7C%20ISC%20%7C%20MPL%20%7C%20CC%20%7C%20OFL-0f766e?style=flat-square)
![数据日期](https://img.shields.io/badge/data-2026--11--02-2563eb?style=flat-square)
![PRs](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)

<sub>最后核验：2026-11-02 · 仅收录 Star ≥ 3,000 且未归档的仓库</sub>

<sub>[落地页与营销页](#cat-1) · [SaaS 控制台与仪表盘](#cat-2) · [电商与商业转化](#cat-3) · [作品集与个人站](#cat-4) · [文档站与内容站](#cat-5) · [动效与滚动叙事](#cat-6) · [设计系统与 Token](#cat-7) · [UI 组件库](#cat-8) · [排版、字体与图标](#cat-9) · [数据可视化](#cat-10) · [视觉编辑器与 AI 辅助出稿](#cat-11) · [演示、图形与视觉叙事](#cat-12)</sub>

</div>

这份清单解决一个问题：**当你要做某类前端界面时，应该从哪个开源项目开始。** 每个分类下用一张表列出项目、具体适用场景、Star 与许可证；点名称即可进入仓库。

<a id="cat-1"></a>

## 落地页与营销页

用最短路径搭出产品首屏、定价页与活动页，重点看视觉冲击和区块完整度。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Magic UI](<https://github.com/magicuidesign/magicui>) | 适合 AI / SaaS 产品的营销首屏，用粒子、光束、跑马灯和数字动效制造记忆点。 | 23,037 | MIT |
| [Taxonomy](<https://github.com/shadcn-ui/taxonomy>) | 适合带登录、订阅与文档的 SaaS 产品站，尤其是 shadcn 风格的营销首屏、定价页和博客组合。 | 19,291 | MIT |
| [Flowbite](<https://github.com/themesberg/flowbite>) | 适合中小团队用 Tailwind 快速拼出营销页、价格页、博客和后台界面。 | 9,382 | MIT |
| [Material Kit React](<https://github.com/devias-io/material-kit-react>) | 适合需要成套 MUI 营销区块的 SaaS 官网，Hero、Features、Pricing、Testimonials 可直接替换文案。 | 5,581 | MIT |
| [Material Tailwind](<https://github.com/creativetimofficial/material-tailwind>) | 适合想要 Material 质感又不想放弃 Tailwind 效率的产品官网与营销页。 | 4,363 | MIT |

<a id="cat-2"></a>

## SaaS 控制台与仪表盘

面向登录后的工作台、数据监控与运营后台，优先考虑信息密度和组件完备度。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Apache Superset](<https://github.com/apache/superset>) | 适合数据密集型的内部 BI 控制台、运营分析台和可配置的大屏。 | 75,387 | Apache-2.0 |
| [AdminLTE](<https://github.com/ColorlibHQ/AdminLTE>) | 适合传统后台、运维面板和 CRUD 管理系统，尤其是需要快速落地的 Bootstrap 项目。 | 45,672 | MIT |
| [Tabler](<https://github.com/Tabler/tabler>) | 适合干净、密度适中的 SaaS 管理后台、监控台和项目工作台。 | 41,987 | MIT |
| [Appsmith](<https://github.com/appsmithorg/appsmith>) | 适合低代码内部工具、运营后台和把表格/表单/图表快速拼成工作台的场景。 | 41,149 | Apache-2.0 |
| [Refine](<https://github.com/refinedev/refine>) | 适合 React 内部工具、管理后台和需要快速接 REST/GraphQL 的 CRUD 产品。 | 35,980 | MIT |
| [Tremor](<https://github.com/tremorlabs/tremor>) | 适合以 KPI 卡片、趋势图、状态条为核心的现代 SaaS 仪表盘。 | 3,686 | Apache-2.0 |

<a id="cat-3"></a>

## 电商与商业转化

从商品、订单到店面体验，适合需要真实交易链路的商业项目。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Saleor](<https://github.com/saleor/saleor>) | 适合需要 GraphQL 头less 电商后端与高度定制店面的中大型商业项目。 | 23,500 | BSD-3-Clause |
| [Spree Commerce](<https://github.com/spree/spree>) | 适合 Ruby/Rails 技术栈的电商后台、多店铺运营和需要深度定制的交易流程。 | 15,805 | BSD-3-Clause |
| [Sylius](<https://github.com/sylius/sylius>) | 适合 PHP/Symfony 电商，尤其是复杂商品模型、多语言和多市场场景。 | 8,564 | MIT |

<a id="cat-4"></a>

## 作品集与个人站

个人品牌、简历与项目展示，强调排版、叙事和轻量维护。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Simplefolio](<https://github.com/cobiwave/simplefolio>) | 适合快速上线一个干净的开发者作品集，重点突出项目卡片和简历下载。 | 14,220 | MIT |
| [v4 (Brittany Chiang Portfolio)](<https://github.com/bchiang7/v4>) | 适合开发者个人作品集，想要深色极简、强排版和单页叙事的高级感。 | 8,290 | MIT |
| [VCard Personal Portfolio](<https://github.com/codewithsadee/vcard-personal-portfolio>) | 适合个人简历式名片站，单页展示头像、技能、项目与联系方式。 | 8,159 | MIT |
| [MasterPortfolio](<https://github.com/ashutosh1919/masterPortfolio>) | 适合想要丰富模块（关于、技能、经历、项目、博客）的个人品牌站。 | 4,225 | MIT |

<a id="cat-5"></a>

## 文档站与内容站

产品文档、知识库与技术博客，关注导航、搜索、版本与可读性。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Docusaurus](<https://github.com/facebook/docusaurus>) | 适合产品文档、开发者文档和需要版本化/国际化/博客的内容站。 | 66,637 | MIT |
| [Docsify](<https://github.com/docsifyjs/docsify>) | 适合轻量 Markdown 文档站，不想引入构建流程、直接静态托管即可。 | 31,574 | MIT |
| [MkDocs Material](<https://github.com/squidfunk/mkdocs-material>) | 适合技术手册、知识库和需要精致导航、搜索、代码高亮的文档站。 | 27,594 | MIT |
| [mdBook](<https://github.com/rust-lang/mdBook>) | 适合 Rust/CLI 工具书式文档，生成可离线阅读的电子书。 | 22,258 | MPL-2.0 |
| [Hugo PaperMod](<https://github.com/adityatelange/hugo-PaperMod>) | 适合博客、技术写作和偏内容型的个人站，追求极简、快和 SEO 友好。 | 14,024 | MIT |
| [Nextra](<https://github.com/shuding/nextra>) | 适合 Next.js 生态的文档 + 博客混合站，需要 MDX 与内置主题。 | 13,947 | MIT |
| [Starlight](<https://github.com/withastro/starlight>) | 适合 Astro 项目的开发者文档站，轻量且可访问性好的默认设计。 | 9,510 | MIT |

<a id="cat-6"></a>

## 动效与滚动叙事

页面转场、滚动联动、3D 与微交互，用来建立节奏和记忆点。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [three.js](<https://github.com/mrdoob/three.js>) | 适合需要 3D 产品展示、WebGL 首屏和空间叙事的品牌站。 | 117,412 | MIT |
| [Anime.js](<https://github.com/juliangarnier/anime>) | 适合需要时间轴编排的 SVG、Logo、加载动画和轻量 DOM 动效。 | 74,207 | MIT |
| [Motion (Framer Motion)](<https://github.com/framer/motion>) | 适合 React 产品里的页面转场、手势、滚动进度和微交互。 | 34,799 | MIT |
| [React Three Fiber](<https://github.com/pmndrs/react-three-fiber>) | 适合 React 技术栈的 3D 产品配置器、沉浸式首屏和交互式场景。 | 33,429 | MIT |
| [AOS](<https://github.com/michalsnik/aos>) | 适合传统静态页快速加滚动入场动画，成本最低。 | 28,046 | MIT |
| [Lenis](<https://github.com/darkroomengineering/lenis>) | 适合高端品牌站、作品集和需要丝滑惯性滚动、滚动联动的页面。 | 17,033 | MIT |
| [Barba.js](<https://github.com/barbajs/barba>) | 适合多页站点做无刷新页面转场，同时保留 SEO 与真实 URL。 | 12,998 | MIT |

<a id="cat-7"></a>

## 设计系统与 Token

从颜色、间距到组件规范，适合需要长期一致性的产品体系。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Ant Design](<https://github.com/ant-design/ant-design>) | 适合中后台密集表单、表格、权限系统的企业级设计语言。 | 100,041 | MIT |
| [Material UI (MUI)](<https://github.com/mui/material-ui>) | 适合 React 中后台/SaaS，需要成熟组件和深度主题定制。 | 99,297 | MIT |
| [Tailwind CSS](<https://github.com/tailwindlabs/tailwindcss>) | 适合任何需要自定义视觉系统的前端，从营销页到后台。 | 98,283 | MIT |
| [Chakra UI](<https://github.com/chakra-ui/chakra-ui>) | 适合快速搭可访问的 React 产品界面，主题与暗色模式开箱即用。 | 40,711 | MIT |
| [Mantine](<https://github.com/mantinedev/mantine>) | 适合需要大量现成组件和 hooks 的 React 管理端/工具站。 | 31,897 | MIT |
| [Headless UI](<https://github.com/tailwindlabs/headlessui>) | 适合想要完全掌控视觉、只复用交互与无障碍逻辑的 Tailwind 项目。 | 28,805 | MIT |
| [Fluent UI](<https://github.com/microsoft/fluentui>) | 适合微软风格的企业应用、Office 类生产力工具和需要高密度交互的产品。 | 20,383 | MIT |
| [Radix Primitives](<https://github.com/radix-ui/primitives>) | 适合自建设计系统的团队，作为无障碍交互底座。 | 19,464 | MIT |
| [React Spectrum](<https://github.com/adobe/react-spectrum>) | 适合 Adobe 风格、复杂交互与国际化要求高的企业应用。 | 16,006 | Apache-2.0 |
| [Carbon Design System](<https://github.com/carbon-design-system/carbon>) | 适合 IBM 风格的大型企业后台、数据产品与设计规范落地。 | 9,596 | Apache-2.0 |

<a id="cat-8"></a>

## UI 组件库

直接提供可复用的界面组件，按技术栈和视觉风格选择。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Bootstrap](<https://github.com/twbs/bootstrap>) | 适合传统企业站、快速原型和需要稳定栅格与组件的老项目。 | 174,968 | MIT |
| [shadcn/ui](<https://github.com/shadcn-ui/ui>) | 适合 AI 生成式 UI、SaaS 后台与营销站，代码可直接掌控。 | 127,161 | MIT |
| [Ionic Framework](<https://github.com/ionic-team/ionic-framework>) | 适合一套代码做移动端 Web/混合 App，接近原生交互。 | 52,736 | MIT |
| [Semantic UI](<https://github.com/semantic-org/Semantic-UI>) | 适合老项目维护或需要语义化类名的快速页面。 | 51,004 | MIT |
| [Bulma](<https://github.com/jgthms/bulma>) | 适合纯 CSS、无 JS 依赖的轻量营销页、博客和简单后台。 | 50,035 | MIT |
| [Vuetify](<https://github.com/vuetifyjs/vuetify>) | 适合 Vue 3 中后台与 Material 风格的完整组件体系。 | 41,032 | MIT |
| [HeroUI](<https://github.com/heroui-inc/heroui>) | 适合 React/Next.js 现代 SaaS，想要动效和精美默认样式的产品界面。 | 31,085 | Apache-2.0 |
| [Element Plus](<https://github.com/element-plus/element-plus>) | 适合 Vue 3 中后台、表单表格密集的业务系统和国内企业项目。 | 27,834 | MIT |

<a id="cat-9"></a>

## 排版、字体与图标

界面字体、等宽字体、图标与品牌图形，决定产品的细节质感。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Fira Code](<https://github.com/tonsky/FiraCode>) | 适合开发者文档、技术产品官网的代码展示与等宽排版。 | 82,165 | OFL-1.1 |
| [Material Design Icons](<https://github.com/google/material-design-icons>) | 适合需要完整 Material 图标集的 Web 与移动端产品。 | 54,215 | Apache-2.0 |
| [Simple Icons](<https://github.com/simple-icons/simple-icons>) | 适合品牌墙、社交链接和技术栈展示，统一 SVG 品牌图标。 | 26,123 | CC0-1.0 |
| [Lucide](<https://github.com/lucide-icons/lucide>) | 适合现代 SaaS/工具的线性图标系统，风格统一且可定制。 | 25,461 | ISC |
| [Heroicons](<https://github.com/tailwindlabs/heroicons>) | 适合 Tailwind 项目的手工打磨线性/实心图标。 | 23,895 | MIT |
| [Tabler Icons](<https://github.com/tabler/tabler-icons>) | 适合后台/仪表盘的高密度图标需求，覆盖广。 | 22,525 | MIT |
| [Inter](<https://github.com/rsms/inter>) | 适合 UI 正文与数据表格，屏幕可读性优先的产品界面。 | 20,025 | OFL-1.1 |

<a id="cat-10"></a>

## 数据可视化

图表、仪表盘与大屏，按定制程度和图表类型选择。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [D3.js](<https://github.com/d3/d3>) | 适合需要完全自定义的数据可视化、交互式图表和地理可视化。 | 113,856 | ISC |
| [Chart.js](<https://github.com/chartjs/Chart.js>) | 适合快速上线的常规折线/柱状/饼图，配置简单。 | 67,773 | MIT |
| [Apache ECharts](<https://github.com/apache/echarts>) | 适合中文业务后台、大屏和复杂联动图表。 | 67,663 | Apache-2.0 |
| [Recharts](<https://github.com/recharts/recharts>) | 适合 React 仪表盘里的组合图表，组件化接入最快。 | 27,681 | MIT |
| [Visx](<https://github.com/airbnb/visx>) | 适合需要低层 SVG 控制、又不想从零写 D3 的 React 数据产品。 | 21,093 | MIT |
| [Plotly.js](<https://github.com/plotly/plotly.js>) | 适合科研/金融分析型图表，需要 3D、统计图和导出能力。 | 18,377 | MIT |

<a id="cat-11"></a>

## 视觉编辑器与 AI 辅助出稿

设计稿、白板、截图与代码之间的转换，适合探索和交付提速。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Excalidraw](<https://github.com/excalidraw/excalidraw>) | 适合手绘风格架构图、流程草图和白板协作。 | 135,017 | MIT |
| [Screenshot to Code](<https://github.com/abi/screenshot-to-code>) | 适合从设计截图快速生成可运行 HTML/Tailwind 页面原型。 | 80,977 | MIT |
| [Penpot](<https://github.com/penpot/penpot>) | 适合开源替代 Figma 的团队设计稿、设计系统和交付流程。 | 61,979 | MPL-2.0 |
| [Onlook](<https://github.com/onlook-dev/onlook>) | 适合在真实 React 页面里做可视化编辑与 AI 改稿。 | 27,080 | Apache-2.0 |
| [Mitosis](<https://github.com/BuilderIO/mitosis>) | 适合一次设计稿/组件代码编译到 React/Vue/Svelte/Angular 多端。 | 14,453 | MIT |

<a id="cat-12"></a>

## 演示、图形与视觉叙事

幻灯片、流程图与节点画布，用可视化方式讲清复杂信息。

| 技能 | 什么时候用 | Star | 许可证 |
| --- | --- | ---: | --- |
| [Mermaid](<https://github.com/mermaid-js/mermaid>) | 适合文档里的流程图、时序图、ER 图，文本即图表。 | 90,976 | MIT |
| [Reveal.js](<https://github.com/hakimel/reveal.js>) | 适合技术分享、产品发布，用 HTML 做可交互演示文稿。 | 72,505 | MIT |
| [Slidev](<https://github.com/slidevjs/slidev>) | 适合开发者大会、技术培训，Markdown 写幻灯片并带代码高亮。 | 49,331 | MIT |
| [React Flow](<https://github.com/xyflow/xyflow>) | 适合节点编辑器、工作流编排和 AI Agent 流程可视化。 | 38,866 | MIT |
| [Marp](<https://github.com/marp-team/marp>) | 适合从 Markdown 快速生成品牌一致的技术演示和课件。 | 12,709 | MIT |

## 致谢开源作者

感谢以下作者与组织。同一维护者合并为一行，括号内是其在本清单中的项目；也感谢所有项目的贡献者与社区。

- [@tailwindlabs](https://github.com/tailwindlabs)（Headless UI、Heroicons、Tailwind CSS）
- [@apache](https://github.com/apache)（Apache ECharts、Apache Superset）
- [@shadcn-ui](https://github.com/shadcn-ui)（shadcn/ui、Taxonomy）
- [@tabler](https://github.com/tabler)（Tabler、Tabler Icons）
- [@abi](https://github.com/abi)（Screenshot to Code）
- [@adityatelange](https://github.com/adityatelange)（Hugo PaperMod）
- [@adobe](https://github.com/adobe)（React Spectrum）
- [@airbnb](https://github.com/airbnb)（Visx）
- [@ant-design](https://github.com/ant-design)（Ant Design）
- [@appsmithorg](https://github.com/appsmithorg)（Appsmith）
- [@ashutosh1919](https://github.com/ashutosh1919)（MasterPortfolio）
- [@barbajs](https://github.com/barbajs)（Barba.js）
- [@bchiang7](https://github.com/bchiang7)（v4 (Brittany Chiang Portfolio)）
- [@BuilderIO](https://github.com/BuilderIO)（Mitosis）
- [@carbon-design-system](https://github.com/carbon-design-system)（Carbon Design System）
- [@chakra-ui](https://github.com/chakra-ui)（Chakra UI）
- [@chartjs](https://github.com/chartjs)（Chart.js）
- [@cobiwave](https://github.com/cobiwave)（Simplefolio）
- [@codewithsadee](https://github.com/codewithsadee)（VCard Personal Portfolio）
- [@ColorlibHQ](https://github.com/ColorlibHQ)（AdminLTE）
- [@creativetimofficial](https://github.com/creativetimofficial)（Material Tailwind）
- [@d3](https://github.com/d3)（D3.js）
- [@darkroomengineering](https://github.com/darkroomengineering)（Lenis）
- [@devias-io](https://github.com/devias-io)（Material Kit React）
- [@docsifyjs](https://github.com/docsifyjs)（Docsify）
- [@element-plus](https://github.com/element-plus)（Element Plus）
- [@excalidraw](https://github.com/excalidraw)（Excalidraw）
- [@google](https://github.com/google)（Material Design Icons）
- [@hakimel](https://github.com/hakimel)（Reveal.js）
- [@heroui-inc](https://github.com/heroui-inc)（HeroUI）
- [@ionic-team](https://github.com/ionic-team)（Ionic Framework）
- [@jgthms](https://github.com/jgthms)（Bulma）
- [@juliangarnier](https://github.com/juliangarnier)（Anime.js）
- [@lucide-icons](https://github.com/lucide-icons)（Lucide）
- [@magicuidesign](https://github.com/magicuidesign)（Magic UI）
- [@mantinedev](https://github.com/mantinedev)（Mantine）
- [@marp-team](https://github.com/marp-team)（Marp）
- [@mermaid-js](https://github.com/mermaid-js)（Mermaid）
- [@meta](https://github.com/meta)（Docusaurus）
- [@michalsnik](https://github.com/michalsnik)（AOS）
- [@microsoft](https://github.com/microsoft)（Fluent UI）
- [@motiondivision](https://github.com/motiondivision)（Motion (Framer Motion)）
- [@mrdoob](https://github.com/mrdoob)（three.js）
- [@mui](https://github.com/mui)（Material UI (MUI)）
- [@onlook-dev](https://github.com/onlook-dev)（Onlook）
- [@penpot](https://github.com/penpot)（Penpot）
- [@plotly](https://github.com/plotly)（Plotly.js）
- [@pmndrs](https://github.com/pmndrs)（React Three Fiber）
- [@radix-ui](https://github.com/radix-ui)（Radix Primitives）
- [@recharts](https://github.com/recharts)（Recharts）
- [@refinedev](https://github.com/refinedev)（Refine）
- [@rsms](https://github.com/rsms)（Inter）
- [@rust-lang](https://github.com/rust-lang)（mdBook）
- [@saleor](https://github.com/saleor)（Saleor）
- [@Semantic-Org](https://github.com/Semantic-Org)（Semantic UI）
- [@shuding](https://github.com/shuding)（Nextra）
- [@simple-icons](https://github.com/simple-icons)（Simple Icons）
- [@slidevjs](https://github.com/slidevjs)（Slidev）
- [@spree](https://github.com/spree)（Spree Commerce）
- [@squidfunk](https://github.com/squidfunk)（MkDocs Material）
- [@Sylius](https://github.com/Sylius)（Sylius）
- [@themesberg](https://github.com/themesberg)（Flowbite）
- [@tonsky](https://github.com/tonsky)（Fira Code）
- [@tremorlabs](https://github.com/tremorlabs)（Tremor）
- [@twbs](https://github.com/twbs)（Bootstrap）
- [@vuetifyjs](https://github.com/vuetifyjs)（Vuetify）
- [@withastro](https://github.com/withastro)（Starlight）
- [@xyflow](https://github.com/xyflow)（React Flow）

## 免责声明

本仓库只做收集与整理，**不拥有任何上游项目的版权**。代码、设计、字体、图标与商标归原作者及贡献者所有，使用时请遵守各项目自己的许可证。收录不代表安全审计或商业适用性背书。

