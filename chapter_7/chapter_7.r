# Problem 1
tenth_movie <- chapter_7_movie[10, "movie"]

# Problem 2
first_four_genres <- chapter_7_movie[1:4, "genre"]

# Problem 3
chapter_7_movie$movie[chapter_7_movie$movie  == "Spice World"] <- "Naked Gun"

# Problem 4
preninetiesmovies <- chapter_7_movie$movie[chapter_7_movie$year < 1990]

# Problem 5
sum(chapter_7_movie["genre"] == "Drama")

# Problem 6
chapter_7_movie$time[chapter_7_movie$time < 0] <- NA

mean(chapter_7_movie$time, na.rm = TRUE)

# Problem 7
comedies <- chapter_7_movie$movie[chapter_7_movie$genre == "Comedy"]

# Problem 8
comedies_under_50mil <- chapter_7_movie$movie[chapter_7_movie$genre == "Comedy" & chapter_7_movie$boxoffice < 50]


# Problem 9
median(chapter_7_movie$boxoffice[chapter_7_movie$rating %in% c("G", "PG")])

# Problem 10
length(chapter_7_movie$movie[chapter_7_movie$rating == "R" | chapter_7_movie$genre == "Comedy"])
