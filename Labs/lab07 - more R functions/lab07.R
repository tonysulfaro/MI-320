# last updated: 2019-02-20
# author: tony sulfaro
# description: more functions in R using flights data etc.

# get packages
install.packages("nycflights13")
library(nycflights13)
library(tidyverse)

# Question 01
flights %>% select(year:day, ends_with("delay"), distance, air_time) %>% mutate(hours = air_time / 60)
# mutate() puts the new hours column at the end of the data frame on the right end of it

# Question 02
flights %>% select(air_time, arr_time, dep_time) %>% mutate(time_diff = arr_time - dep_time)

# Question 03
# air_time is always smaller than the time_diff of a specific flight
# this makes sense because a flight cannot be in the air longer than it takes to go from one place to another
# it also takes time for the plane to taxi down the runway and for passengers to load/unload which makes the time_diff larger than air_time

# Question 04
# create dep_time_min and arr_time min
# minutes past midnight, did not use provided function for first but compared speed
start1 = Sys.time()
flights %>% select(air_time, arr_time, dep_time) %>% mutate(dep_time_min = (dep_time %/% 100 * 60) + dep_time %% 100) %>% mutate(arr_time_min = (arr_time %/% 100 * 60) + arr_time %% 100)
end1 = Sys.time()
end1 - start1

source("Week7_Lab_min_since_midnight.R")
start2 = Sys.time()
flights %>% select(air_time, arr_time, dep_time) %>% mutate(dep_time_min = min_since_midnight(dep_time)) %>% mutate(arr_time_min = min_since_midnight(arr_time))
end2 = Sys.time()
end2 - start2
# just use integer division to get how many hours and then modulo to add on minutes remainder
# eg: 517 %/% 100 == 5 (hours), 517 %% 100 = 17 (minutes)


# Question 05
# I validated the results by doing the calculation manually then comparing it to the result.
# take the arr_time 830 for example

# get hours then multiply by 60 then add on minutes remainder
# hours: 830 %/% 100 = 8 * 60 = 480
# minutes: 830 %% 100 = 30
# total: 480 + 30 = 510

# the arr_time_min = 510 which matches our calculation, just change arr_time to dep_time to get dep_time_min


# Question 06
flights %>% group_by(carrier) %>%
  summarize(avg.delay = mean(dep_delay, na.rm = TRUE))

# Question 07
flights %>% group_by(carrier) %>%
  summarize(avg.delay = mean(dep_delay, na.rm = TRUE)) %>%
  arrange(desc(avg.delay))
# F9 has the worst (longest) average delays

# Question 08
flights %>% group_by(carrier) %>%
  summarize(count = n(), avg.delay = mean(dep_delay, na.rm = TRUE)) %>%
  arrange(desc(avg.delay))

# Question 09
flights %>% group_by(dest) %>%
  summarize(sum.delay = sum(dep_delay, na.rm = TRUE)) %>%
  arrange(desc(sum.delay))

# Question 10
# count how many times flight was late by exactly 10 minutes
flights %>% group_by(tailnum) %>%
  filter(arr_delay == 10) %>%
  summarize(times_late = n()) %>%
  arrange(desc(times_late))

# Question 11

flights %>% filter(tailnum == "N844MH")

flights %>% group_by(tailnum) %>%
  summarize(avg.arr_delay = mean(arr_delay, na.rm = TRUE)) %>%
  arrange(desc(avg.arr_delay))
# this plane: N844MH has the worst arr time on average but there is only one trip with it.
# many of these high delay flights only have one really late trip in the entire dataset

# Question 12
flights %>% group_by(hour = arr_time %/% 100) %>%
  summarize(avg.arr_delay = mean(arr_delay, na.rm = TRUE), avg.dep_delay = mean(dep_delay, na.rm = TRUE)) %>%
  arrange(avg.arr_delay)
# get hour of day from arr_time integer division for group by
# select average delay for arrivals and delays
# arrange by arrival time ascending to get flights that are early
# flights in the morning tend to arrive and depart early






