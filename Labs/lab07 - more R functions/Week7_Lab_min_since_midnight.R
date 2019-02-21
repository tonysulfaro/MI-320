# last updated: February 1, 2017
# author: Emilee Rader
# description: a function to convert a time represented as a continuous number, like 517, to minutes since midnight

# this function takes an integer
# and converts it to the number of minutes since midnight
# if the number doesn't represent a time, the function returns NA
min_since_midnight <- function(x) {
	if ((x %% 100) > 59 || (x - x %% 100) > 2300) {
		return(NA)
	} else {
		return ((x - x %% 100)/100 * 60 + x %% 100)
	}
}
