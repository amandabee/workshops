# Extract the subset of rows of the data frame where Ozone values are above 31
# and Temp values are above 90. What is the mean of Solar.R in this subset


as.numeric(y)

y.numeric <- as.numeric(y)
y.integer <- as.integer(y)

y.character <- as.character(y.numeric)

demo.matrix <- matrix(demo.vector, nrow=4, ncol=5)
demo.matrix


permit.status <- factor(c( "APPROVED", "REQUESTED", "APPROVED", "REQUESTED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "REQUESTED", "REQUESTED", "APPROVED", "APPROVED", "APPROVED", "APPROVED", "APPROVED", "EXPIRED"))
permit.status
permit.status <- c(permit.status, "Bad data")

na.demo <- c(3, 2, 1, NA, 1, 2, 3)
demo.vector <- c(3, 2, 1, NA, NaN, 2, 3)
is.na(na.demo)


demo.frame <- data.frame(flower = c("Roses", "Violets"), 
                         color = c("red", "blue"))
attributes(demo.frame)
attr(demo.frame, "names")
attr(demo.frame, "row.names")
nrow(demo.frame)
ncol(demo.frame)


demo.frame <- rbind(demo.frame, c("poppy", "orange"))

sizes <- c(8, 9.5, "M", "unknown")
names(sizes)
names(sizes) <- c("Pants", "Shoes", "Tops", "Hat")
names(sizes)
sizes



new.flower <- c("Poppy", "orange", "unknown")
newer.frame <- rbind(demo.frame, new.flower)


demo.frame <- data.frame(flower = c("Roses", "Violets"), 
                         color = c("red", "blue"),
                         stringsAsFactors = FALSE)


getwd()
setwd("/home/amanda/Desktop")
setwd()
class(food.trucks$Status)
class(food.trucks$FoodItems)

setwd("Public/workshops/2015/Intro to R")
food.trucks <- read.csv("Mobile_Food_Facility_Permit.csv")

column.classes <- c("integer", "character", "factor", "integer", "character", "character", 
                    "character", "character", "character", "character", "factor", "character", 
                    "numeric", "numeric", "numeric", "numeric", "character", "character", 
                    "character", "character", "factor", "character", "character")

food.trucks.alt <- read.csv("Mobile_Food_Facility_Permit.csv", colClasses = column.classes)


food.trucks[1]
sizes[2]
sizes$Hat
sizes[[2]]
class(sizes[2])
class(sizes[[2]])
sizes[c(1,3)]
sizes[1:3]

sizes[sizes < 10]

demo.vector <- sample(1:99, 25)
demo.vector[demo.vector > 30]
demo.vector > 30

ex <- demo.vector > 30
demo.vector[ex]
sizes <- list(8, 9.5, "M", "unknown")

sizes[4]
sizes[[4]]


sizes$Pants
sizes["Pants"]
sizes[["Pants"]]
sizes$Shi

names(sizes) <- c("Slacks", "Shoes", "Shirts", "Hat")

# Usually, you wont intentionally bust your code by introducing NA values -- 
# they have a way of introducing themselves but for the moment, we just need to
# make sure we have some. So we'll do this:

demo.vector.messy <- sample(1:99, 25)
tmp <- demo.vector.messy %% 3
# What does `%%` do? Check out the arithmetic help (`?Arithmetic`)
demo.vector.messy[which(tmp == 0)] <- "foo"
demo.vector.messy <- as.numeric(demo.vector.messy)
is.na(demo.vector.messy)

sizes
sizes[4]
sizes[[!4]]


=============
  Data Frame Subsets
=============

summary(food.trucks)  
attributes(food.trucks)
names(food.trucks)  

food.trucks$FacilityType
food.trucks[1,2]

food.trucks.alt[1:10, c(2:3, 11, 19)]
food.trucks[1:10, c(2:3, 11, 19)]
food.trucks[1,2]
food.trucks[2,2]
food.trucks[3,2]


