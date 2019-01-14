# Problem 1
sqrt(1:10)

# Problem 2
s <- c(2, 0, 3, 1, 0, 3, 5)
d <- c(0, 0, 1, 0, 1, 2, 2)

mean(s)
mean(d)

# Problem 3

difference <- d-s
mean(difference)
sd(difference)
median(difference)

# Problem 4

# 64 squares = 8 by 8
# Pattern looks like:
# 1, 2, 4, 8, 16, 32, 64, 128
# 256, ...

rice_count <- 2 ^ (0:63)
rice_total <- sum(rice_count)
rice_weight <- rice_total * 1/6400
