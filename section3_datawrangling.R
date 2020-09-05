library(dslabs)
library(tidyverse)

data("murders")

# adding a new column: rate
murders <- mutate(murders, rate= total/population*100000)


# filter function 
filter(murders, rate <=0.71)

# state abb        region population total
# 1        Hawaii  HI          West    1360301     7
# 2          Iowa  IA North Central    3046355    21
# 3 New Hampshire  NH     Northeast    1316470     5
# 4  North Dakota  ND North Central     672591     4
# 5       Vermont  VT     Northeast     625741     2
# rate
# 1 0.5145920
# 2 0.6893484
# 3 0.3798036
# 4 0.5947151
# 5 0.3196211

#select function 
new_table <- select(murders, state, region, rate)

filter(new_table, rate <=0.71)
# state        region      rate
# 1        Hawaii          West 0.5145920
# 2          Iowa North Central 0.6893484
# 3 New Hampshire     Northeast 0.3798036
# 4  North Dakota North Central 0.5947151
# 5       Vermont     Northeast 0.3196211

# using the pipe: %>%
# shift +command +m
murders %>%
  select(state, region, rate) %>% 
  filter(rate <= 0.71)

# state        region      rate
# 1        Hawaii          West 0.5145920
# 2          Iowa North Central 0.6893484
# 3 New Hampshire     Northeast 0.3798036
# 4  North Dakota North Central 0.5947151
# 5       Vermont     Northeast 0.3196211

################ Creating Dataframes ############################

grades <- data.frame(names=c("John", "Juan", "Jean", "Yao"),
                      exam_1=c(95, 80, 90, 85), 
                     exam_2=c(90, 85, 85, 90), 
                     stringsAsFactors = FALSE)
grades

# check the class
class(grades$names)


population_in_millions <- murders$population/10^6

total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)


hist(murder_rate)

murders$state[which.max(murders$rate)]


boxplot(rate~region, data = murders)




  