JULIAHOME=../julia-release

run:
	@echo "$(shell tput bold)Launching dockerized site at http://localhost:4000$(shell tput sgr0)"
	docker run --rm -v $(shell pwd):/srv/jekyll -it -p 4000:4000 juliacn/jekyll:builder jekyll serve --incremental

build:
	docker run --rm -v $(shell pwd):/srv/jekyll juliacn/jekyll:builder jekyll build

benchmarks: benchmarks.csv _includes/benchmarks.html _includes/benchmarks.svg
.PHONY: benchmarks

benchmarks.csv:
	cp $(JULIAHOME)/test/perf/micro/benchmarks.csv .

_includes/benchmarks.html:
	cp $(JULIAHOME)/test/perf/micro/benchmarks.html _includes

_includes/benchmarks.svg:
	julia benchmarks.jl

clean:
	rm benchmarks.csv _includes/benchmarks.html _includes/benchmarks.svg

