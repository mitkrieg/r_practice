# import tidyverse (a collection of packages for data science and clean data)
library(tidyverse)

library(dbplyr) #dataframes (aka tibble) & data manipulation
library(readr) #gets data
library(ggplot2) #plots data ala seaborn & matplotlib

# read csv
tips <- read_csv("tips.csv")
tips

# select() chooses columns
select(tips, total_bill) #one col
select(tips, total_bill, sex, time) #multi col
select(tips, total_bill:time) #range of cols
select(tips, -X1) #remove col
select(tips, starts_with('s')) #selects columns that start with s

#filter chooses rows based on conditions
filter(tips, day == 'Sun') #chooses rows where the day is Sunday
filter(tips, tip > 5) #chooses rows where tip is larger than 5
filter(tips, sex == "Male" & smoker == "Yes") # and syntax
filter(tips, sex == "Male" | smoker == "Yes") # or syntax

#mutate creates new cols. Multiple mutations can be done at once sep by commas
#does not save in place unless you assign to a variable
mutate(tips, 
       total_in_pounds = total_bill *.81, 
       tip_in_pounds = tip * 0.81)

# %>% is called the pipe operator and passes the same 
#tiblle/dataframe to the next line
#from tips select 4 cols filter rows by Males & smokers and then add cols for 
#pounds
tips %>%
  select(total_bill, tip, sex, smoker) %>%
  filter(sex == "Male" & smoker == "Yes") %>%
  mutate(total_bill_punds = total_bill * 0.82,
         tip_pounds = tip * 0.82)

#group by and agg functions
tips %>%
  group_by(smoker) %>% #group
  summarise(mean_tip = mean(tip), #get average
            count = n()) %>%
  arrange(desc(mean_tip)) #sort
  