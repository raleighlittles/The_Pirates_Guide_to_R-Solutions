library(yarrr)

# Problem 1
pixarmoviesVStattoos <- aov(formula = tattoos ~ fav.pixar, data=pirates)
summary(pixarmoviesVStattoos)

## From the ANOVA summary, the p-value is 0.132, which means that there does not apear to be any 
## significant relationship

# Problem 2
favpirateVStattoos <- aov(formula = tattoos ~ favorite.pirate, data = pirates)
summary(favpirateVStattoos)

## From the ANOVA summary, the p-value is 0.197, so there is not a significant relationship

# Problem 3
favpirateANDpixar <- aov(formula = tattoos ~ favorite.pirate + fav.pixar, data=pirates)
summary(favpirateANDpixar)
## From the ANOVA summary, the p-value for both favorite pirate and favorite pixar movie are both 
## greater than 0.05, so there appears to not be a significant relationship even between both

# Problem 4
favpirateANDpixar.interaction <- aov(formula = tattoos ~ favorite.pirate * fav.pixar, data=pirates)
summary(favpirateANDpixar.interaction)

## From the ANOVA summary, the p-value is still greater than 0.05 on all 3 characteristics, so there 
## is no evidence of any interaction
