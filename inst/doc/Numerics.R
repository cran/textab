## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(textab)

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(1.0, 1.01, 1.001)
TexRow(vec)

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(1.0, 1.01, 1.001)
TexRow(vec, dec = 2)

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(1.0, 1.01, 1.001)
TexRow(vec, dec = c(2,4,6))

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(20,30,40)
TexRow(vec, dec = 0, percentage = TRUE)

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(2.4344, 40.12)
TexRow(vec, dec = c(2,1), percentage = c(FALSE, TRUE))

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(20.32,30.67,40.98)
TexRow(vec, dec = 2, dollar = TRUE)

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(2.4344, 40.12)
TexRow(vec, dec = c(2,1), percentage = c(FALSE, TRUE), dollar = c(TRUE, FALSE))

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(20.32,30.67,40.98)
TexRow(vec, dec = 2, se = TRUE)

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(2.4344, 0.3815)
TexRow(vec, dec = 3, se = c(FALSE, TRUE))

## ----echo=T, eval=TRUE, message=FALSE-----------------------------------------
vec <- c(1,2,3)
TexRow(vec, dec = 2, pvalues = c(0.09, 0.04, 0.009))

