setwd("~/Public/workshops/2015/January-Academy/R")
library(plyr)

## Loading Data ###

library(ggplot2)
mpg.frame <- data.frame(mpg)
names(mpg)
str(mpg)
summary(mpg)
summary(mpg$class)


mpg[1:6, 1:4]

mpg.2008 <- mpg[mpg$year==2008,]
mpg.1999 <- mpg[mpg$year==1999,]
summary(mpg[mpg$year==c(2007,2008), ])

aggregate(mpg, list(mpg$year), FUN=mean, na.rm=TRUE)

## I thought this was not working, but then I did nrows(mpg) and nrows(mpg[mpg$year==1999,]) to confirm that actually these are all 1999 or 2008

mpg.means <- aggregate(list(mpg$hwy, mpg$cty), by=list(year = mpg$year), FUN=mean)

names(mpg.means) <- c('Year', 'Highway', 'City')


data.frame(tapply(mpg$hwy, mpg$year, mean))


## Compute the averages for the variables in 'state.x77', grouped
## according to the region (Northeast, South, North Central, West) that
## each state belongs to.
aggregate(mpg, list(year = mpg$year), mean)

# Effectively we're splitting the data into subsets (one for each year) and 
aggregate(team.weight ~ team.jersey + team.sex, data=team, FUN=mean)
aggregate(mpg$hwy ~ mpg.)
