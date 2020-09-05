library(dslabs)
library(tidyverse)

data("murders")

sort(murders$total)

index <- order(murders$total)

murders$abb[index]

i_max <- which.max(murders$total)

murders$state[i_max]

murder_rate <- murders$total/murders$population *100000

murders$state[order(murder_rate, decreasing=TRUE)]

index <- which(murders$state == "Massachusettes")

murder_rate[index]


index <-match(c("New York", "Florida", "Texas"), murders$state)

index

murders$state[index]

murder_rate[index]

x <- c("a", "b", "c", "d", "e")

y <- c("a", "d", "f")

y %in% x

c("Boston", "Dakota", "Washington") %in% murders$state


