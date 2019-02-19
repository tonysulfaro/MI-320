# last updated: 2019-02-13
# author: tony sulfaro
# description: some important tidyverse things

# get packages
install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

# q 01
flights %>% select(flight, carrier, dep_time, year, month, day)

# q 02
flights %>% select(dep_time, dep_delay, arr_time, arr_delay)

# q 03
flights %>% select(contains("arr_"))
str(flights)

# q 04
# the contains() function filters down the dataset for col names that have that in the string
# any col that has "arr_" will be selected

# q 05
flights %>% filter(arr_delay >= 120)

# q 06a
flights %>% filter(dest == 'IAH' | dest == 'HOU')
# 1 06b
flights %>% filter(dep_delay >= 60 & arr_delay < 30)

# q 07
flights %>% filter(is.na(dep_time))

# q 08
# missing attributes: dep_time, dep_delay, arr_time, arr_delay, air_time
# this could be because if there are no dep_time or arr_time you cannot calculate the delays or airtime

# q 09
flights %>% arrange(dep_time)

# q 10a
flights %>% arrange(desc(dep_delay))
# q 10b
flights %>% arrange(distance)

# q 11
flights %>% filter(origin == 'JFK' | origin == 'EWR' | origin == 'LGA') %>% filter(year == 2013 )  %>% count(tailnum) %>% arrange(desc(n)) 

# q 12
count(flights %>% filter(month >= 6, day >= 21) %>% filter(month<=9, day<= 21))

# q 13
str(flights)
count(flights %>% filter(distance > 100, distance < 200))

# q 14
flights %>% filter(origin == 'JFK' | origin == 'EWR' | origin == 'LGA') %>% filter(air_time > 7*60)

# EC
# flights more than two hours late from earhc of the different airports in dataset
# x = airport
# y - count of 2+ hours late

datas = flights %>% filter(dep_delay > 120)
datas
ggplot(data = datas) +
  geom_bar(mapping = aes(x=origin))+
  ggtitle("Number of flights more than two hours late to depart by airport code") +
  xlab("Airport Code") +
  ylab("Count of times more than two hours late to depart")


# mutate for column that is percent
