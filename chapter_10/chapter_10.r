# Problem 1
coffee <- read.table(file = "https://raw.githubusercontent.com/ndphillips/ThePiratesGuideToR/master/data/caffeinestudy.txt", sep="\t", header = TRUE)

# Problem 2
aggregate(formula = age ~ gender, data = coffee, FUN = mean)

# Problem 3
aggregate(formula = age ~ drink, data = coffee, FUN = mean)

# Problem 4
aggregate(formula = age ~ gender + drink, data = coffee, FUN = mean)

# Problem 5
aggregate(formula = score ~ age, data = coffee, FUN = median)

# Problem 6
aggregate(formula = score ~ age, data = coffee, FUN = max, subset = gender == "male")

# Problem 7
coffee %>% group_by(drink) %>% summarise( mean(score),  median(score), max(score), sd(score))

# Problem 8
coffee %>% group_by(drink, cups) %>% filter(gender == "female") %>% summarise(mean(score), median(score), max(score), sd(score), member_count = n())
