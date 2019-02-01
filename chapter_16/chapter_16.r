library(yarrr)

# Problem 1

Jacks.Equation <- function(area, number_of_trees, drunkness_rating) {
  return((area * number_of_trees) - drunkness_rating * 324 + log(area))
}

Jacks.Equation(1000, 30, 7)


# Problem 2

standardize.me <- function(vector_to_standardize)
{
  return((vector_to_standardize - mean(vector_to_standardize)) / sd(vector_to_standardize))
}

standardize.me(c(1, 2, 1, 100))

# Problem 3

recode.numeric <- function(x, lb, ub)
{
  x[x >= ub |  x <= lb]  = NA
  return(x)
  
}

# Problem 4

plot.advanced <- function(x, y, add.regression, add.means, add.test)
{
  plot(x,y)
  if (add.means == TRUE)
  {
  abline(lm(y ~ x))
  }
  if (add.regression == TRUE)
  {
  abline(v = mean(x), h = mean(y), lty=3)
  }
  
  if (add.test == TRUE)
  {
    info <- cor.test(x,y)
    text_string <- c()
    text_to_use <- paste("r = ", round(info$estimate, 2), ", ", "t(", round(info$parameter,2), ") = ", round(info$statistic, 2), ", ", "p = ", round(info$p.value),  sep = "")
    mtext(text_to_use, side = 3)
  }
}
