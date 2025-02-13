#!/usr/bin/env Rscript
if(!require("quarto")){
  install.packages("quarto")
}
library(quarto)
if(!quarto::quarto_binary_sitrep()){
  stop("Something is wrong with your quarto installation.")
}
quarto::quarto_render(".")
system("git add 'docs/Charles_Wojcik_Resume.pdf'")
if(!any(grepl("rstudio", search()))){q("no")}
