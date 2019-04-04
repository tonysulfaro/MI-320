# last updated: 2019-02-08
# author: tony sulfaro
# description: lets get some more plotting going to see all the data

# q 01
install.packages("tidyverse")
election2016 = read.csv("Week5_Lab_election2016_data.csv")

# see dimensions
dim(election2016)

library(ggplot2)
# q 03
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points))

# q 04
# the points go up the more right you go on the graph
# there is a positive correlation between pct_pop_metro and d_points (metro areas, left leaning)
# x-axis: percentage of metropolitan area
# y-axis: The percentage point difference between Clinton share of votes and Trump share of votes. 
#         Positive means Clinton had more votes than Trump

# q 05
# The data shows trends between living area and political lean, more metro tends to mean more left-leaning

# q 06
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points))+
ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")

# q 07
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")

# q 08
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = d_points > 0))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")


# q 09
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = d_points > 0, size=3))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")

# q 10 
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = factor(d_points > 0), size=3))+
  scale_color_manual(values = c("red", "blue"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")

# q 11
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = factor(d_points > 0), size=3))+
  scale_color_manual(values = c("red", "blue"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")+
  theme_bw()

# q 12
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = factor(d_points > 0), size=3))+
  scale_color_manual(values = c("red", "blue"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
   o
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")+
  theme_bw()+
  scale_y_continuous(breaks=seq(-100,100,10))+
  scale_x_continuous(breaks=seq(-100,100,10))


# q 13
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = winner),size=3)+
  scale_color_manual(values = c("blue", "red"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")+
  theme_bw()+
  scale_y_continuous(breaks=seq(-100,100,10))+
  scale_x_continuous(breaks=seq(-100,100,10))+
  theme(legend.position = "top")


# q 14
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = winner, alpha=pct_non_white))+
  scale_color_manual(values = c("blue", "red"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")+
  theme_bw()+
  scale_y_continuous(breaks=seq(-100,100,10))+
  scale_x_continuous(breaks=seq(-100,100,10))+
  theme(legend.position = "top")

# q 15
ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_pop_metro, y=d_points, colour = winner, shape=non_white_over_30_pct))+
  scale_color_manual(values = c("blue", "red"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("State Percentage in Metro Area") +
  ylab("Vote Point Percentages towards Clinton")+
  geom_hline(aes(yintercept=0), colour="#838B8B")+
  theme_minimal()+
  scale_y_continuous(breaks=seq(-100,100,10))+
  scale_x_continuous(breaks=seq(-100,100,10))+
  theme(legend.position = "top")

# q 16
# The graph from 14 imo is the better one
# graph from 15 just is a boolean if it is over 30 while the graph 14 shows correlation between pct_non_white and size by adjusting alpha
# that makes the distinctions more granular instead of one or the other

# q 17
# the data by using pct_non_white mapped to the point alpha means that you can see a better trend in the data
# becuase pct_over30 means that the percentage of non white votes was over 30 it doesnt really give any insight into how much over or under it was of 30. 
# just that it was over or under 30
# because pct_non_white was mapped to alpha it gives a bit more precision.
# An observed trend (maybe) would be that the more non_white an area is, the more likey that area would be to lean left.
# to be honest though im having a hard time seeing concrete proof of that correlation here so im going to say inconclusive on that.


# EC

ggplot(data = election2016) +
  geom_point(mapping = aes(x=pct_voted, y=vote_margin, colour = winner, alpha=pct_non_white))+
  scale_color_manual(values = c("blue", "red"))+
  ggtitle("Votes for Clinton by percentage of population in metro areas") +
  #labs(caption="States with a more metrolpolitan population tend to lean more to the left")+
  xlab("percentage of the state's population that voted") +
  ylab("vote margin of the winner in the state")+
  #geom_hline(aes(yintercept=0), colour="#838B8B")+
  theme_bw()+
  #scale_y_continuous(breaks=seq(0,4e+06,1000))+
  scale_x_continuous(breaks=seq(-100,100,10))+
  theme(legend.position = "top")

# As more people in a state vote, the margin that they are won by decreases







