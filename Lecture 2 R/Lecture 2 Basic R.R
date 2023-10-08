#for human readings
#Welcome to R! POLI3148

# Chapter 2 ----

# Title:       R basics
# Purpose:     This script use R to perform basic analysis
# Author:      Xu Yueling
# Last update: 2023/09/14
# Memo:        How to change basic information of the data frame?

# 2.1 Getting started ----

2 + 2
#[1] 4

log(1)
log10(10)
exp(1)
sqrt(4)
4 ^ 2
pi
exp(2)
# exp returns the mathematical e raised to the power of the specific number

# 2.2 Objects in R ----

## 2.2.1 Numeric objects ----

my_obj <- 15
my_obj + 2

my_obj
print(my_obj)

# Rule for an object:
# No leading number
# No space
# Dots are allowed but not recommended

dora <- 9
tommy <- 45

# Give INFORMATIVE names!

uhoh <- 1

## 2.2.2 Character objects ----

obj_character <- "R is cool"
obj_character <- 'R is cool'
# If the text contains quotation marks in the sentence, differentiate between the different quotation marks
obj_character <- "R's cool"

## 2.2.3 Removal of objects ----

### Remove objects ----
rm(my_obj, uhoh, dora, tommy, obj_character)
### Remove all objects ----
rm(list = ls())

# 2.3 Vector ----

my_vec <- c(1,2,5,4,8,9)

mean(my_vec)
var(my_vec)
sd(my_vec)
length(my_vec)

# 2.4 Sequences ----

my_seq <- 1:10
my_seq_revers <- 10:1
my_adv_seq <- seq(from = 1, to = 5, by = 0.5)

# 2.5 Repetition ----
my_seq_rep <- rep(2, times = 10)
my_seq_rep <- rep(1:5, times = 10)

print(1:100)

# 2.6 Missing value ----

temp <- c(1,2,3,NA)
# NA is the indicator of missing value in R
mean(temp)
# output: NA!
mean(temp, na.rm = TRUE)
# output calculated without NA
# na.rm stands for NA removal

# 2.7 Getting Help ----

?mean
?save

# 2.8 Saving R ----

# NEVER save the work space image as you do not want everything still on the inferface next time you open R

rm(list = ls()) 

# Chapter 3 ----

# 3.1 Data types ----

## 3.1.1 Numeric and integer ----

obj_numeric <- 3.4
class(obj_numeric)
typeof(obj_numeric)
obj_numeric_2 <- 5L
class(obj_numeric_2)
is.numeric(obj_numeric_2)
is.integer(obj_numeric)

## 3.1.2 Logical ----

obj_logical_T <- TRUE
obj_logical_F <- F

## 3.1.3 Character ----

obj_character <- "R is cool!"
is.character(obj_character)
is.logical(obj_numeric)

## 3.1.4 Coersion ----

obj_to_change <- c("1","3","Missing","4","5")
#mean(obj_to_change)
obj_changed <- as.numeric(obj_to_change)#failed attempt: if is.numeric(obj_to_change = TRUE)
obj_changed
# failed attempt: Vectorize(obj_to_change)

# 3.2 Data structures ----

## 3.2.1 Vector ----
#See 2.3

## 3.2.2 List ----

list_2 <- list(
  c(1,2,3),
  c(9,8,7)
)

list_2[[2]]

list_1 <- list(
  color = c("black","brown","yellow"),
  truth = c(T, F),
  mat = matrix(1:6, nrow = 3)
)

list_1

list_1$color

rm(list=ls())

## 3.2.3 Data frame ----

list_3 <- list(
  color = c("purple","violet","pink"),
  truth = c(T, F, T)
)

as.data.frame(list_3)

p.height <- c(180, 155, 160, 167, 181)
p.weight <- c(65, 60, 52, 58, 78)
p.name <- c("Joanna", "Charlotte", "Helen", "Katie", "Melody")

dataf <- data.frame(weight = p.weight,
                    height = p.height,
                    name = p.name)

summary(dataf)
names(dataf)
dim(dataf)

summary(dataf$weight)
summary(dataf$height)
table(dataf$name)

dataf[1, ]
dataf[ ,2]

dataf[1,2] <- 3

