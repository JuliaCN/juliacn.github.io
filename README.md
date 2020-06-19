# README

这里是 [cn.julialang.org](https://cn.julialang.org) 的源码，提供对 Julia 英文官方网站 ([julialang.org](https://julialang.org)) 的中文翻译版。

## 如何贡献翻译？

Fork 本 repo，然后直接在github上编辑，发Pull Request（注意发PR的时候要merge到dev分支，而不是master分支）。

或者，也可以本地预览确认修改之后，再发PR。下载最新版的Julia，切换到该repo所在的目录，打开Julia REPL，安装Franklin.jl并serve对应的静态文件:

```julia
julia> using Pkg; Pkg.add("Franklin")

julia> using Franklin

julia> serve()
→ Initial full pass...
→ evaluating code [...] (learning/code-examples.md)
→ Starting the server...
✓ LiveServer listening on https://localhost:8000/ ...
  (use CTRL+C to shut down)
```

然后用编辑器修改相应的文件，网页会自动刷新预览，确认无误之后再发PR即可。
