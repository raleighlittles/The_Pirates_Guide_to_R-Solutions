# Problem 2

median(chapter_8_hero$Age)

# Problem 3

fem_ages <- subset(x=chapter_8_hero, subset=(Sex == "F"), select=Age)

median(fem_ages$Age)

male_ages <- subset(x=chapter_8_hero, subset=(Sex == "M"), select=Age)

median(male_ages$Age)

# Problem 4

max(chapter_8_hero$Tattoos[chapter_8_hero$Sex == "M"])


# Problem 5
young_female_pirates <- subset(x=chapter_8_hero, subset= (Age < 32) & (Sex == "F"), select=Name)
length(young_female_pirates) / length(chapter_8_hero$Age) * 100

# Problem 6
fem_pirates <- subset(x=chapter_8_hero, subset = (Sex == "F"), select = Age)

length(fem_pirates[fem_pirates$Age < 25]) / length(fem_pirates)

# Problem 7
tats_per_year <- with(chapter_8_hero, Tattoos/Age)
chapter_8_hero$tattoos.per.year <- tats_per_year

# Problem 8
chapter_8_hero$Name [ chapter_8_hero$tattoos.per.year == max(chapter_8_hero$tattoos.per.year)]

# Problem 9
chapter_8_hero$Name[with(chapter_8_hero, Sex == "F" & Superhero == "Superman")]

# Problem 10
median(chapter_8_hero$Tattoos[with(chapter_8_hero, Age > 20 & Superhero == "Spiderman")])
