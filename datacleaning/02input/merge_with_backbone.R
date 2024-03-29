# Statistical Data Cleaning
# Mark van der Loo and Edwin de Jonge
# I-Week 2024, Prague


## Approximate matching ----
# Task: merge our 'companies' data with data from the backbone.

# Assignment 1: playing around with 'stringdist'.
library(stringdist)

# 1.a Try these commands and interpret their results. Can you guess
# how the difference between strings is measured? Discuss with your neighbor.
stringdist("hihi", "hihihi")
stringdist("hihi", "haha")
stringdist("hihi", "ihhi")
stringdist("hello", "Hello")

# the distance is measured by finding the smallest number of 
# character substitutions, insertions, deletions, and transpositions
# to turn one string into another.

# 1.b compute the string distance between your name and your neighbours name.


# 1.c compute the string distance between your own "firstname lastname" and
#     "lastname, firstname".


# Assignment 2. Matching data on exact keys, using 'match'
# (this can be done easier with 'merge' but we need this method for the 
# final assignment)

# first read in the data
companies <- read.csv("02input/companies.csv",stringsAsFactors = FALSE) 
backbone  <- read.csv("02input/backbone.csv", stringsAsFactors = FALSE)


# i: for each element of 'companies$name' give the location (row index) in
# backbone$company with the same value.
i <- match(companies$name, backbone$company)
# merge, using 'cbind'
test <- cbind(backbone[i,,drop=FALSE], companies)
View(test)

# or, to view only the match quality:
d <- data.frame(dirty = companies$name, matched = backbone$company[i])
View(d)


## Assignment 3: Given at the end of this session



# at the end write your result to '02input/my_input.csv'
write.csv(input, "02input/my_input.csv", row.names=FALSE)



