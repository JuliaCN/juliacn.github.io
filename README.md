# README

这里是 [cn.julialang.org](https://cn.julialang.org) 的源码。本站是一个单页静态网站，只收录面向国内用户的资源（镜像、中文文档、社区渠道）；Julia 的官方信息请以 [julialang.org](https://julialang.org) 为准。

## 如何修改？

直接编辑 `index.html`，向 `dev` 分支发 Pull Request 即可。合并到 `dev` 后，GitHub Actions 会自动发布到 `gh-pages` 分支。

本地预览：用浏览器直接打开 `index.html`，或在仓库目录运行 `python3 -m http.server` 后访问 <http://localhost:8000>。

请不要在页面中写入具体的 Julia 版本号，以免过时。
