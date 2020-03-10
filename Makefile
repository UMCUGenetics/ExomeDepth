full: createPackage build

createPackage:
	Rscript  --default-packages=methods,utils,graphics util/create_lib.R --no-save

build: createPackage
	R CMD build --resave-data working/ExomeDepth --no-build-vignettes

checks: 
	R CMD check --as-cran  ExomeDepth_1.1.12.tar.gz

html: build
	Rscript -e "setwd('working/ExomeDepth'); devtools::load_all(); pkgdown::build_site()"

