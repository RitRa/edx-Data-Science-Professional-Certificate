library(dslabs)
data(heights)
options(digits = 3) 

heights

#Q1. First, determine the average height in this dataset. Then create a logical vector ind with the indices for those individuals who are above average height.
# 
# How many individuals in the dataset are above average height?

summary(heights)

#68.3



isClass(height)

ind <- heights %>% 
  filter(height > mean(height))

NROW(ind)
#532

mean_height <- mean(heights$height)

ind <- heights$height < mean_height

mean(ind)



#Q2. How many individuals in the dataset are above average height and are female?
summary(ind)
ind
#31

#
#Q3. If you use mean() on a logical (TRUE/FALSE) vector, it returns the proportion of observations that are TRUE.
# What proportion of individuals in the dataset are female?

women <- heights$sex == "Female"
mean(women)
#0.227

# Q4 a. Determine the minimum height in the heights dataset.
min(heights$height)
# 50

# 4b. Use the match() function to determine the index of the first individual with the minimum height.


min_height <- min(heights$height)
match(min_height, heights$height)
#1032


#4c Subset the sex column of the dataset by the index in 4b to determine the individual’s sex.

subset(heights,heights$height ==50 )
# sex height
# 1032 Male     50
# 1045 Male     50

#5a. Determine the maximum height.
max_height <- max(heights$height)
#82.7

#5b.Which integer values are between the maximum and minimum heights? For example, if the minimum height is 10.2 and the maximum height is 20.8, your answer should be x <- 11:20 to capture the integers in between those values. (If either the maximum or minimum height are integers, include those values too.)

max_height<- as.integer(max_height)
min_height<-as.integer(min_height)

x <- (max_height:min_height)
NROW(x)

x <- (50:82)
# [1] 50 51 52 53 54 55 56 57 58 59 60 61 62 63
# [15] 64 65 66 67 68 69 70 71 72 73 74 75 76 77
# [29] 78 79 80 81 82

# 5c. How many of the integers in x are NOT heights in the dataset?

sum(!x %in% heights$height)

# 6. Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.

heights <-mutate(heights, ht_cm = height*2.54)
heights[18,]
# sex height ht_cm
# 18 Female     64   163

# 6b. What is the mean height in centimeters?

mean_ht_cm <- mean(heights$ht_cm)
# 174

# 7a. How many females are in the heights2 dataset?
females <- filter(heights, sex=="Female")
  
count(females)
#238

female_mean <- mean(females$ht_cm)
# 165

# 8.The olive dataset in dslabs contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
library(dslabs)
data(olive)
head(olive)

#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?
plot(olive$palmitic, olive$palmitoleic)
# positive linear relationship

# 9. Create a histogram of the percentage of eicosenoic acid in olive.


hist(olive$eicosenoic)
# the most common value of eicosenoic is below 0.05%



# 10. Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.

boxplot(palmitic~region, olive)

# Which region has the highest median palmitic acid percentage?
# Southern Italy

#Which region has the most variable palmitic acid percentage?
# Southern Italy









  
