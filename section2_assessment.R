x <- c(2, 43, 27, 96, 18)

sort(x)
#2 18 27 43 96

order(x)
#1 5 3 2 4

rank(x)
#1 4 3 5 2

which.min(x)

max(x)

which.max(x)


name <- c("Mandi", "Amy", "Nicole", "Olivia")

#miles
distance <- c(0.8, 3.1, 2.8, 4.0)

# minutes
time <- c(10, 30, 40, 50)

hours <- time/60

speed_per_hour <- distance/hours

data.frame(name=name, hours, speed_per_hour)

