# last updated: 1-23-2019
# author: Tony Sulfaro
# description: Getting started with ggplot2
# Note: Tyler and myself worked together to get better ideas of concepts.

# Sources: 
# https://ggplot2.tidyverse.org/reference/position_jitter.html

# question 01
install.packages("tidyverse")
library(ggplot2)

# question 02
?diamonds
str(diamonds)

# question 03
dim(diamonds) # 53940 rows, 10 cols

# question 04
# cut describes cat
# Categorical: Cut, Color, Clarity
  # they are finite values, not infinite. They are non-numeric
# continuous : price, x, y, z, depth, weight
  # Infinite number of values, numeric

# question 06
# uses the diamonds dataset
# x-axis: carat
# y-axis: price
ggplot(data = diamonds) +
  geom_point(mapping = aes(x=carat, y=price, color = color))
# looks like A: scatter plot

# question 07
# get some color in here
ggplot(data = diamonds) +
  geom_point(mapping = aes(x=carat, y=price, color = color))

# question 08
ggplot(data = diamonds) +
  geom_point(mapping = aes(x=carat, y=price, color = color))

# question 09
# there is a positive correlation between good or better color and price per carat because the better colors tend to have higher prices
# overall, qualities that are better in diamonds (color, clarity, cut) could mean that those with higher values of those variables have higher prices

# question 10
# uses the diamonds dataset
# x-axis: cut
# y-axis: count (auto generated)
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
# looks like C: bar graph or histogram

# question 11
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut), fill = "blue")

# question 12
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut,fill = clarity))

# question 13
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut,fill = clarity), position="dodge") # dodge seperates stacked bars out

# question 14
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut,fill = clarity), position="dodge") +
  ggtitle("Number of Diamonds by cut and clarity") +
  xlab("Cut Category") +
  ylab("Count")

# question 15
# based on the plot it would appear that ideal cuts of quality VS2 most common in the ideal group

# question 16
ggplot(data = diamonds) +
  geom_point(mapping = aes(x=color, y=clarity))

# question 17
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = clarity,fill = color), position="dodge")

# question 18
# It isnt useful because its just a grid of color and clarity, no quantitative data to see which combinations are more common
# bar chart has counts of combinations of color and quantity. can see which combinations are most or least common (eg: color D, clarity VS1)

# question 19
ggplot(data = diamonds) +
  geom_point(mapping = aes(x=color, y=clarity), position = "jitter")

# question 20
# instead of mapping intersections with one point it shows multiple points in an area to indicate density, still a grid but 2D blocks to represent intersections instead of points


# EC 21
diamonds.sample = diamonds[sample(1:nrow(diamonds),100,replace=FALSE),]

# EC 22
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x=carat, y=price), position = "jitter")

# EC 23
# https://stackoverflow.com/questions/36683646/plot-multiple-variables-on-scatter-plot
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x=carat, y=depth, color = color), position = "jitter")
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x=carat, y=depth, color = depth), position = "jitter")
# was not sure on the shape attribute, its not in the dataframe
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x=carat, y=depth, color = depth), position = "jitter")

# EC 24
ggplot(data = diamonds.sample) +
  geom_point(mapping = aes(x=carat, y=price, color = clarity), position = "jitter")

# EC 25
# Numerical values allow the y axis to respond to values by category much more easily while having categorical variables on x and y axes just show intersections between qualities.egorical cut of the diamond, (Fair, Good, Very Good, Premium, Ideal)

# question 05