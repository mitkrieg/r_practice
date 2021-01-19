#import libraries
library(readr)
library(ggplot2)

#load in data
tips <- read_csv("tips.csv")

#scatter plot
ggplot(tips, aes(x = total_bill, y=tip, color=time, shape=smoker))+
  geom_point()

#scatter plot by group
ggplot(tips, aes(x = total_bill, y=tip, color=time, shape=smoker))+
  geom_point() + 
  facet_wrap(~day)

#bar plot 
ggplot(tips, aes(x = day, fill=smoker)) + 
  geom_bar()

#bars side by side
ggplot(tips, aes(x = day, fill=smoker)) + 
  geom_bar(position='dodge')

#normalized bar
ggplot(tips, aes(x = day, fill=smoker)) + 
  geom_bar(position='fill')
