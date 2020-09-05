library(dslabs)
library(tidyverse)

data("murders")

class(murders)
# "data.frame"

#reveals structure of the object
str(murders)

# 'data.frame':	51 obs. of  5 variables:
#   $ state     : chr  "Alabama" "Alaska" "Arizona" "Arkansas" ...
# $ abb       : chr  "AL" "AK" "AZ" "AR" ...
# $ region    : Factor w/ 4 levels "Northeast","South",..: 2 4 4 2 4 4 1 2 2 2 ...
# $ population: num  4779736 710231 6392017 2915918 37253956 ...
# $ total     : num  135 19 232 93 1257 ...

names(murders)

# [1] "state"      "abb"        "region"     "population"
# [5] "total"  

head(murders)

#accessing the columns
murders$state

#vectors
pop <- murders$population
length(pop)

class(murders$state)

# categorical factors
class(murders$region)
# "factor"
levels(murders$region)


summary(murders)

murders %>%
  ggplot(aes(population, total, label = abb, color =region )) +
  geom_label()






