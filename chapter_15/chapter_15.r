library(yarrr)
library(gtools) 

# Problem 1

jbb.cannon.lm <- lm(formula = jbb ~ cannons, data = auction)
summary(jbb.cannon.lm)

## According to the summary, our linear model looks like:
## jbb = 1396.326 + (number of cannons) * (100.748)
## Thus it appears that each cannon adds roughly $100 to the ship's value

# Problem 2
classic.jbb.cannon <- lm(formula = jbb ~ cannons, data = auction, subset = (style == "classic"))
modern.jbb.cannon <- lm(formula = jbb ~ cannons, data = auction, subset = (style == "modern"))

summary(classic.jbb.cannon)
summary(modern.jbb.cannon)

## The cannon coefficient for classic ships is 103.586; for modern ships its 99.832; so yes, the 
## relationship between cannons and JBB value is the same for both types of ships -- namely that 
## each additional cannon increases the JBB value of the ship by roughly 100

# Problem 3

jbb.age.style.lm <- lm(formula = jbb ~ style * age, data = auction)
summary(jbb.age.style.lm)

## Use the p-values. The p-value on stylemodern:age is 0.0005, showing that a modern style interacts
##  with age strongly

# Problem 4

jbb.all.lm <- lm(formula = jbb ~ cannons + rooms + age + condition + color + style, data=auction)
summary(jbb.all.lm)$coefficients

## From the p-values, we see that: 1) cannons, 2) rooms, 3) age, and 4) condition, 5) style; all have p-values
## smaller than 0.05 and thus have a non-significant role in influencing the JBB value of the ship

# Problem 5

price.all.lm <- lm(formula = price ~ cannons + rooms + age + condition + color + style, data = auction)
summary(price.all.lm)$coefficients

## From the p-values, we see that: 1) cannons, 2) rooms, 3) age, 4) condition, 5) color (brown, red,
## salmon only); all have p-values smaller than 0.05; the only variable that was not captured by our 
## JBB linear model was color (brown, red, salmon) -- which had p-values of 3.3e-07, 5.3e-98, and 
## 1.5e-02 respectively

# Problem 6

auction$price.gt.3500 <- auction$price > 3500
price.all.blr <- glm(formula = price.gt.3500 ~ cannons + rooms + age + condition + color + style, 
                     data = auction)
summary(price.all.blr)

## From the p-values, we see that: 1) cannons, 2) rooms, 3) condition, 4) color (red), 5) style (modern);
## all have p-values less than 0.05. This differs from the JBB regression in that brown and salmon 
## are not reflected here, and neither is age.

# Problem 7
predict(object = price.all.lm, newdata = new_ships)
## Result is
## 
##        1        2        3 
## 3943.821 2331.084 6296.081 
## 

# Problem 8

logit.predict <- predict(object = price.all.blr, newdata = new_ships)
gtools::inv.logit(logit.predict)

## Result is
##         1         2         3 
## 0.6750779 0.4406588 0.8890544 

