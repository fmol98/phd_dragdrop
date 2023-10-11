
# phd

<!-- badges: start -->
<!-- badges: end -->

The goal of phd is to contain useful functions for the PhD life within the Tytgat institute. "Useful" can be interpreted in many ways. 

## Installation

You can install the development version of phd like so:

``` r
devtools::install_github("fmol98/phd_dragdrop", build_vignettes = TRUE)
```

## Example

This is a basic example which shows you how to solve a common problem, such as making a list of chairmen duos for the Thursday morning meetings:

``` r
library(phd)
chairmen_24Q1 <- make_chairmen(tytgat_aio)
```

You can also try out the PhD_life() function for a nice "useful" break ;)
