library(yarrr)

# Problem 1
par(mfrow = c(2,2))

timeperiods <- c(0, 2, 4, 6)
for (t in timeperiods)
{
  desiredChickWeights = ChickWeight$Weight[ChickWeight$Time == t]
  hist(x= desiredChickWeights, main = paste("Time: ", t))
}


# Problem 2

survey <- data.frame("q1" = c(5, 3, 2, 7, 11, 5),
                     "q2" = c(4, 2, 2, 5, 5, 2),
                     "q3" = c(2, 1, 4, 2, 9, 10),
                     "q4" = c(2, 5, 2, 5, 4, 2),
                     "q5" = c(1, 4, -20, 2, 4, 2))

#survey.clean <- data.frame("q1" = NA, "q2" = NA, "q3" = NA, "q4"=NA, "q5" = NA)

survey.clean <- data.frame()

upperbound <- 10
lowerbound <- 0

for (question.number in 1:nrow(survey))
{
    question <- survey[, question.number - 1] # 0 index
    #print(question)
    question[question < lowerbound | question > upperbound] = NA
    
   # survey.clean[nrow(survey.clean + 1), ] <- as.vector(question)
   
    survey.clean <- rbind(survey.clean, as.data.frame(t(question)))
}


# Problem 3

survey.clean$invalid.answers = rep(NA, nrow(survey.clean))

# Problem 4

survey.B <- data.frame("q1" = c(5, 3, 2, 7, 1, 9),
                       "q2" = c(4, 2, 2, 5, 1, 10),
                       "q3" = c(2, 1, 4, 2, 9, 10),
                       "q4" = c(10, 5, 2, 10, 4, 2),
                       "q5" = c(4, 4, 3, 2, 4, 2))

survey.B.z <- as.data.frame(scale(survey.B))
