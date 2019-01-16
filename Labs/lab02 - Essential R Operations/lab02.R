# last updated: 1-16-2019
# author: Tony Sulfaro
# description: Getting more comfortable with the R Language
# Note: Tyler and myself worked together to get better ideas of concepts.

# part 1 Vectors

# question 1
thing = seq(from = 5, to = -11, by=-0.3)
thing_length = length(thing)

# question 2
vec = c(-1,3,-5,7,-9)
sorted_repeated = sort(rep(x = vec,each=10, times=2), decreasing = TRUE)

# question 3
first_last = c(sorted_repeated[1],sorted_repeated[length(sorted_repeated)])

# question 4
matrix_data = c(1,1,1,1,1,1,1,1,1,11,11,11,12,12,12,13,13,13,1,2,3,1,2,3,1,2,3,2.76,8.68,3.94,3.95,3.94,3.08,3.55,2.42,3.62,6.14,27.46,11.08,25.24,13.54,7.23,10.06,10.69,10.7)
result_matrix = matrix(matrix_data, nrow = 9, ncol = 5)

# question 5
dim(result_matrix)

# question 6
first_duration = result_matrix[1,5]

# question 7
first_trips = c(result_matrix[1,4],result_matrix[4,4],result_matrix[7,4])

# question 8
v = c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1)

# question 9
v == 6
v <= 6
v >= 6

# question 10
which(v == 6)
which(v < 6+2)
which(v != 6)

# question 11
v[(v == 9) | (v == 1)]
v[(v>5)|(v<2)]

# question 12
df = data.frame(source("Week2_Lab_automatic_data.R"))
dim(df)
str(df)
# chr: date, start.time, end.time
# num: the rest


# question 13
brake_data = df$value.hard.brake
brake_data

# question 14
# a
df$value.date = factor(df$value.date)

# b
df$value.hard.accel = as.logical(df$value.hard.accel)
df$value.hard.brake = as.logical(df$value.hard.brake)


# question 15
# a
which(df$value.hard.accel & df$value.hard.brake)
# b
length(which(df$value.distance.mi > 10))
# c
length(which(df$value.distance.mi < 3 & df$value.duration.min > 5))
# d
df$value.avg.mpg.over20 = df$value.avg.mpg > 20
