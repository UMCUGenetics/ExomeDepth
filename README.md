## UMCU fork of ExomeDepth, with additional changes
## Version named v2.0.0. as it is possibly backwards incompatible with previous versions.


## Build instruction
# Tested for R 3.5.1

``` bash
make build 
```

# Install R dependicies

##Dependencies
``` R
install.packages("path/to/install.tar.gz" ,lib='path/to/lib')
```

#Bioconductor dependencies:
``` R
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install(c("Biostrings","Rsamtools","GenomicRanges","VGAM","zlibbioc","bitops","BiocGenerics","BiocParallel","S4Vectors","IRanges","GenomeInfoDb","RCurl","GenomeInfoDbData","XVector","GenomicAlignments","Biobase","DelayedArray","matrixStats","Matrix","lattice","aod","stringr","stringi","dplyr","rlang","Rcpp","assertthat","glue","pkgconfig","tibble","pillar","crayon","vctrs","tidyselect","purrr","SummarizedExperiment","R6"), lib='path/to/lib')
```

#Other dependencies:
``` R
install.packages('magrittr', lib='path/to/lib')
```



############### Original README
# What ExomeDepth does

ExomeDepth is a R package designed to detect inherited copy number variants (CNVs) using high throughput DNA sequence data.
While Exome is included in the name of the package it in fact performs best on smaller panels, because the analytics of the package leverage the tight correlation structure between the (often) large number of samples being run in parallel. 
These tight correlations is what ExomeDepth looks for when building a reference sample for each test sample and the quality of the output will typically vary depending on that correlation structure.

Note that while it can be used in the context of tumour/control matched pairs, this is not the initial intent of the tools and the performances in that context are largely untested.

# Build instructions

``` bash
make build
```

should create the relevant version of the ExomeDepth package and build.
Note that ExomeDepth uses the package VGAM and apparently this package required R version 3.4.0 of greater, hence the new requirement that ExomeDepth is built using R 3.4 or greater.

# Useful links

The key paper that describes ExomeDepth is: [A robust model for read count data in exome sequencing experiments and implications for copy number variant calling](https://academic.oup.com/bioinformatics/article/28/21/2747/236565).

Some relevant publications:
* [An evaluation of copy number variation detection tools for cancer using whole exome sequencing data](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-017-1705-x)
* [Validation of copy number variation analysis for next-generation sequencing diagnostics](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5427176/)
* [Comparative Study of Exome Copy Number Variation Estimation Tools Using Array Comparative Genomic Hybridization as Control](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3835197/)


Note that a slightly modified version of ExomeDepth is also used inside another CNV detection packaged called [DECoN](https://www.icr.ac.uk/our-research/research-divisions/division-of-genetics-and-epidemiology/genetic-susceptibility/genetic-data-and-software-resources/decon). 
See the[ blog post on the topic](http://www.thetgmi.org/tgmi-news/detecting-tricky-gene-mutations/).


# Release notes

* ExomeDepth 1.1.10 has been released to CRAN in May 2016.
* ExomeDepth 1.1.11 is a documentation update, that cleans up ExomeDepth using more modern Roxygen documentation.
* A planned version 1.1.12 would improve data visualisation.

