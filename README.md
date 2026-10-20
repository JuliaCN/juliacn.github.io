# README

这里是 [cn.julialang.org](https://cn.julialang.org) 的源码。本站是一个单页静态网站，只收录面向国内用户的资源（镜像、中文文档、社区渠道）；Julia 的官方信息请以 [julialang.org](https://julialang.org) 为准。

## 如何修改？

直接编辑 `index.html`，向 `dev` 分支发 Pull Request 即可。

本地预览：用浏览器直接打开 `index.html`，或在仓库目录运行 `python3 -m http.server` 后访问 <http://localhost:8000>。

请不要在页面中写入具体的 Julia 版本号，以免过时。

## 发布流程

- `dev` 是默认分支，存放网站源文件（`index.html`、`404.html`、`assets/` 等）。
- 每次推送到 `dev`（包括合并 PR），[Deploy](.github/workflows/deploy.yml) 工作流会把这些文件复制到 `gh-pages` 分支。
- GitHub Pages 的发布源是 `gh-pages` 分支根目录（Settings → Pages），自定义域名为 `cn.julialang.org`（见 `CNAME`）。
- 请不要手动修改 `gh-pages` 分支，每次发布都会覆盖其内容。
- 新增文件或目录时，记得在工作流的 `cp` 命令中加上它们，否则不会被发布。
- 如需重新发布，可在 Actions 页面重新运行最近一次 Deploy。发布后 CDN 缓存最多约 10 分钟才会刷新。

`cn.julialang.org/meetup-website/` 由 [JuliaCN/meetup-website](https://github.com/JuliaCN/meetup-website) 仓库单独发布，不受本仓库影响。
