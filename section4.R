a <- 2

if(a!=0){
  print(1/a)
}else{
  print("No reciprocal for 0.")
}

library(dslabs)
data(murders)

murder_rate <- murders$total/murders$population*100000

# which state is the min
ind <- which.min(murder_rate)

if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
}else{
  print("No State has a murder rate that low")
}


a<- 0

ifelse(a >0, 1/a, NA)


data(na_example)

sum(is.na(na_example))

no_nas <- ifelse(is.na(na_example), 0, na_example)

sum(no_nas)

z<- c(TRUE, TRUE, FALSE)

all(z)


avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}
s <- 3

avg(1:10)
s

compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

compute_s_n(10)

m <- 25
#create an empty vector
s_n <- vector(length = m)

for(n in 1:m){
  s_n[n]<- compute_s_n(n)
}

# creating a plot for our summation function
n <- 1:m
plot(n, s_n)

# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n*(n+1)/2))


plot(n, s_n)
lines(n, n*(n+1)/2)



