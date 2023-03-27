## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=TRUE, eval=FALSE, message=FALSE-------------------------------------
#  install.packages("textab")

## ----echo=TRUE, eval=FALSE, message=FALSE-------------------------------------
#  devtools::install_github("setzler/textab")

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
library(textab)

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c("hello", "world")
TexRow(vec)

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c('Hello','\\textbf{World}','$\\alpha$','$\\frac{1}{2}$')
TexRow(vec)

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec <- c(1.0, 1.01, 1.001)
TexRow(vec)

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec <- c(1.0, 1.01, 1.001)
TexRow(vec, dec = 2)

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c(5.081, 2.345, 6.789)
TexRow(vec, dec = 1, surround = "{\\color{red} %s}")

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c("hello", "world")
TexRow(vec, dec = 1, surround = c("{\\color{blue} %s}", "$\\frac{\\text{%s}}{2}$"))

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c("hello", "world")
TexRow(vec, cspan = c(1,2))

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c("hello", "world")
TexRow(vec, cspan = c(1,2), position = "l")

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
vec = c("hello", "world")
TexRow(vec, cspan = c(2,3), position = c("l","r"))

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
first_block = TexRow(c("hello", "world"))
second_block = TexRow(c("$\\alpha$","$\\frac{1}{2}$"))
combined_row = first_block / second_block
combined_row

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
first_block = TexRow(c("hello", "world"))
second_block = TexRow(c("$\\alpha$","$\\frac{1}{2}$"))
combined_row = first_block + second_block
combined_row

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
first_block = TexRow(c("hello", "world"))
second_block = TexRow(c("$\\alpha$"))
third_block = TexRow(c("$\\frac{1}{2}$"))
combined_row = first_block + second_block / third_block
combined_row

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
TexRow(c("hello", "world"), space=3) +
  TexRow(c('$\\alpha$','$\\frac{1}{2}$'))

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
TexRow(c("hello", "world"), cspan=c(1,2)) + 
  TexMidrule() +
  TexRow(c('$\\alpha$','$\\frac{1}{2}$','$\\sqrt{\\frac{2}{3}}$'))

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
TexRow(c("hello", "world"), cspan=c(1,2)) + 
  TexMidrule(list(c(1,1), c(2,3))) +
  TexRow(c('$\\alpha$','$\\frac{1}{2}$','$\\sqrt{\\frac{2}{3}}$'))

## ----echo=TRUE, eval=TRUE, message=FALSE--------------------------------------
tt = TexRow(c("hello", "world"), cspan=c(1,2), surround = c("{\\color{red} %s}", "{\\color{blue} %s}")) + 
  TexMidrule(list(c(1,1), c(2,3))) +
  TexRow(c('$\\alpha$','$\\frac{1}{2}$','$\\sqrt{\\frac{2}{3}}$'))

## ----echo=TRUE, eval=FALSE, message=FALSE-------------------------------------
#  TexSave(tab = tt, positions = c("l","c","c"),
#          filename = "example1", output_path = tempdir())

## ----echo=TRUE, eval=FALSE, message=FALSE-------------------------------------
#  TexSave(tab = tt, positions = c("l","c","c"),
#          filename = "example2", output_path = tempdir(),
#          stand_alone = TRUE)

## ----echo=TRUE, eval=FALSE, message=FALSE-------------------------------------
#  TexSave(tab = tt, positions = c("l","c","c"),
#          filename = "example3", output_path = tempdir(),
#          stand_alone = TRUE, compile_tex = TRUE)

