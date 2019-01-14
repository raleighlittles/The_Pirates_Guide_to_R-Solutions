library(yarrr)

# Problem 1
mean_beard_length <- aggregate(Beard ~ Ship, data=BeardLengths, FUN = mean)

barplot(height=mean_beard_length$Beard, names.arg = mean_beard_length$Ship, xlab="Ship", ylab="Beard Length", main="Barplot of mean beard length by ship", ylim = c(0, 25))

# Problem 2
pirateplot(formula= Beard ~ Ship, data=BeardLengths, main="Pirateplot of beard lengths by ship", xlab="Ship", ylab="Beard Length")

# Problem 3
plot(x=pirates$age, y = pirates$parrots, main="Pirates age and number of parrots owned", xlab="Age", ylab="Parrots", pch = 16, col=gray(level=0.5, alpha=0.1))
