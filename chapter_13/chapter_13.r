library(yarrr)
library(dplyr)
# Problem 1
beardtest <- t.test(formula = beard.length ~ sex, subset = sex %in% c("male", "female"), data=pirates)

## p-value is < 2.2e-16, so reject null hypothesis, and thus the answer is "yes"

# Problem 2
disneypirates <- subset(pirates, fav.pixar %in% c("Up", "Inside Out"), select = c("fav.pixar", "eyepatch"))

insideoutorup <- chisq.test(x = disneypirates$fav.pixar, y = disneypirates$eyepatch)

## p-value is <2.2e-16, x^2 is 88.964, so reject null hypothesis

# Problem 3
revenuevstime <- cor.test(x = movies$time, y = movies$revenue.all)

## Correlation is 0.247, which is very weak and thus there is no correlation

# Problem 4

ratingvstime <- t.test(formula = revenue.all ~ rating, subset = rating %in% c("PG-13", "R"), data=movies)

## p-value is < 2.2e-16, mean for PG-13 is 148 (million), mean for R is 79, so reject null hypothesis, 
## and thus PG-13 movies do generate more revenue than R movies 

# Problem 5
moviegenrecount <- chisq.test(table(movies$genre))

## p-value is < 2.2e-16, so reject null hypothesis, and the answer is yes; some movie genres are 
## more common than others

# Problem 6

chisq.test(movies$sequel, movies$rating)

## p-value is 0.006, so reject null hypothesis, and the answer is yes; sequels and non-sequels get different ratings
