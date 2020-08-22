

# 下载 Julia

如果你喜欢Julia，欢迎在[GitHub](https://github.com/JuliaLang/julia) 给我们点赞噢!

~~~
<a class="github-button" href="https://github.com/JuliaLang/julia" data-size="large" data-show-count="true" aria-label="Star JuliaLang/julia on GitHub">Star</a>
~~~

## 国内镜像列表

目前国内有以下镜像提供Julia二进制文件的稳定下载：

- [清华大学开源软件镜像站](https://mirrors.tuna.tsinghua.edu.cn/help/julia-releases/)
- [北京外国语大学开源软件镜像站](https://mirrors.bfsu.edu.cn/help/julia-releases/)
- [上海交通大学软件源镜像服务](https://mirrors.sjtug.sjtu.edu.cn/julia-releases/)


此外，有关使用国内镜像的相关问题，可以前往[Julia PkgServer 镜像服务及镜像站索引](https://discourse.juliacn.com/t/topic/2969/54)咨询提问。

## Julia 一键安装

尽管一些包管理工具（例如 apt, pacman, conda, choco) 中提供有 Julia，但是这些工具或多或少都存在一些由二进制 依赖导致的问题，因此官方推荐的方式是根据自己的使用平台下载相应的二进制程序，然后通过解压的方式进行手动安装。

对于习惯命令行的用户而言，[jill.py](https://github.com/johnnychen94/jill.py) 是一个社区维护的全平台下一键安装 Julia 的命令行工具。

- 安装/更新 `jill`： `pip install jill --user -U` (需要 Python `3.6` 或更新的版本)

- 安装 Julia：`jill install [VERSION] [--upstream UPSTREAM] [--confirm]`

  - `jill install`：最新的 `x.y.z` 版本
  - `jill install --confirm`：无需交互确认直接安装
  - `jill install --upstream BFSU`：从北外镜像下载并安装
  - `jill install 1.4`：安装最新的 `1.4.z` 版本

- 查询现存的上游镜像：`jill upstream`
- 帮助文档：`jill [COMMAND] --help`
  - `jill --help`：查询存在的 `jill` 命令
  - `jill install --help`：查询 `install` 命令的使用方式

利用 `jill` 安装完成后即可通过在命令行执行 `julia/julia-1/julia-1.4` 来启动不同版本的 Julia.