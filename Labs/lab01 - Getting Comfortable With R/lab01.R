# last updated: 1-9-2019
# author: Tony Sulfaro
# description: first lab of the year

# question 8
x <- 6
y <- 4
x + y

# question 9
126 * 7
sqrt(2)
seq(from = 1, to = 10, by = 1)

# question 10
install.packages("tidyverse")
library(tidyverse)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

# question 12
a = 2.3
(6*a+42)/(3^(4.2-3.62))

# question 13
whatever_you_like = 32 * 41 / 8

# question 14
whatever_you_like = whatever_you_like/2.33
whatever_you_like

# question 15
# 1: ralph <-- "Hello to you!"
# not the correct operator
# 2: 2ralph <- "Hello to you!"
# Invalid object name
# 3: ralph3 <- "Hello to you!
# missing a " at the end
# 4: ralph4 <- date()
# Its all good

# question 16
s <- "How much wood could a woodchuck chuck"
s

# question 17
s = paste(s, "if a woodchuck could chuck wood")
s

# question 18
s = paste(s, "?", sep="")
s

# question 19
yes <- TRUE
no <- FALSE

# question 20
yes+no
# answer = 1

# question 21
yes = toString(yes)
yes
no = as.integer(no)

# question 22
yes + no
# result = non-numeric argument to binary operator
# types don't match so cant do ops on them
