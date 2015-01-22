# Intro to R for Data 

Thurs., Jan. 22, 9:30 a.m.-12:30 p.m.  
Room 436 (14 students max)  

> If you plan to crunch data, you will outgrow Excel, which is when smart reporters turn to R, a powerful statistical analysis and programming language that can process much larger volumes of data than a spreadsheet. We'll walk through the process of opening and summarizing a data set in R, and we'll look at good places to get help when you get stuck. You won’t leave this workshop an expert, but you’ll have enough of a foundation that you can tackle bigger data analysis challenges with the help of the R documentation. The workshop will be taught by Amanda Hickman, who has used R for projects she simply couldn't have completed otherwise. Prerequisites: You should be comfortable filtering and writing simple formulas in Excel or Calc, to get the most out of our workshop. We’ll use R through RStudio’s excellent interface, so please come with RStudio installed on your laptop.

#Introduction 
R is an incredibly powerful free and open source programming language and an environment for interactive data analysis. If you've ever used SPSS or Stata, you know what "real stats software" can do. R, too, is real stats software. 

I had been wanting to try it out for a while when Amanda Aronczyk called me for help on a story she was reporing for Marketplace -- she needed help analyzing hundreds of thousands of rows of data about people who owe money to they Philadelphia court system ([Philadelphia collects court debt decades later](http://www.marketplace.org/topics/wealth-poverty/philadelphia-collects-court-debt-decades-later)). It looked like the perfect place to start learning. I am still feeling my way around R, but there's no question that it's a great tool for good-sized data projects. 

Other things I've done with R? Analyze NYC birth data and compare it to PreK seats. Analyze New Orleans 911 call data and NYC 311 call data. Map US federal prisoners and the zipcodes they come from.

## Requirements
Before our workshop, you should have already installed R, and [RStudio Desktop](http://www.rstudio.com/). Trust me. Using R without a good IDE is no fun at all. RStudio is a great IDE. 

## Finding your way around
We're going to use the IDE as best we can, so everyone should start a new R file, call it `jan_academy.R` -- I'll show you how to "Run" each line and see your work. Why `jan_academy.R` and not `Jan Academy` or `JanAcademy.r` or, really anything else? Because of [reasons](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml). In all seriousness, coding style helps ensure that other folks can read your work. 

I want you to type everything in. Don't cut and paste. Why? Trust me. 

###File System Basics

+ Where are you? `getwd()`
 + + Run that from you `jan_academy.R` script
 + + Run it from the console
 + + Examine your history
+ What else is in that folder? `dir()` (Run from either one.)
+ Use `?dir` and `?getwd` to view the help for those two functions
+ go create a new directory for "January Academy"
+ Move to that directory: *Session > Set Working Directory > Choose Directory...* -- look at your history. What command did that run? `setwd()`
+ Stop and think: how would you add a command to the top of your `jan_academy.R` script that sets the working directory to "January Academy"?
 + + use tab completion in the console. `set`<kbd>tab</kbd>

### Loading Data and Working With It
`function(arguments)` is your basic function structure. The documentation will show you exactly what arguments a particular function takes. We've already used three functions. They didn't take any arguments so the parens were empty. You can use a function as an argument. We'll get to that.

` <- ` means "gets" so you'd read `SomeTable <- read(somefile.csv)` as "SomeTable gets read parens somefile.csv close-parens "

Use the `table$column` notation to use a specific column. R experts will tell you that R doesn't have a concept of "tables" or "columns" -- they're objects or dataframes and variables

`factor` and `vector` are terms you'll encounter a lot in R. I assume there's a reason why they chose these terms but neither makes intuitive sense to me. 


+ Load a data set. 
    library(ggplot2)
    names(mpg)
    str(mpg)
    summary(mpg) /*fun fact: I have no idea what "Factor" means in this context*/
    summary(mpg$class)
    summary(factor(mpg$year))
    summary(factor(mpg$year))
+ Look at one column with `summary(mpg$class)`    
+ Subset: `mpg[1:6, 1:4]`
+ Subset `mpg`: we only want to see data on 2007 and 2008 cars
 + + mpg[mpg$year==2008,] // that's all columns, but only rows that match.
 + + mpg[mpg$year==c(2007,2008), ] // Lookup `c` -- it's a little cryptic, but you get it.
 + + summary(mpg[mpg$year==c(2007,2008), ]) 

### Boolean Operators
    a
    b
    a | b    // Or
    a & b    // And
    a & !b   // And Not
    xor(a, b) // Either, but not both (exclusive or)
     
+ Get the mean for each year with `aggregate(mpg, list(mpg$year), FUN=mean, na.rm=TRUE)`
+ Think about it: I'm only interested in actual mileage. How could I just get one value? two? 
 + + `aggregate(mpg$hwy, list(mpg$year), FUN=mean, na.rm=TRUE)`
 + + `aggregate(list(mpg$hwy, mpg$cty), list(mpg$year), FUN=mean, na.rm=TRUE)`
 
+ Create a new frame 
`mpg.means <- aggregate(list(mpg$hwy, mpg$cty), by=list(year = mpg$year), FUN=mean)`
`names(mpg.means) <- c('Year', 'Highway', 'City')`

I thought this was not working, but then I did `nrows(mpg)` and `nrows(mpg[mpg$year==1999,])` to confirm that actually these are all 1999 or 2008. And then I looked up `summary(factor(mpg$year))`

There are multiple ways to do the same thing: `tapply(mpg$hwy, mpg$year, mean)` or reshape that into a frame with `data.frame(tapply(mpg$hwy, mpg$year, mean))`

You can also use `ddply` but I have never quite grok'd that.
 
### Be More Organized
One thing I really love about R, which you're starting to see here, is that unlike something like Excel, you can keep track of your work, which means that it is reproducible. That you can get the 2015 data when it comes out and seamlessly repeat your analysis. 


### More Commands
+ read.csv()
+ write.csv()
+ is.na()

 


# Focus
Don't worry too much about why you do things this way and not that. Stick to conventions as you're getting started. Assume there are good reasons for them. Trust me.

There are many ways to do one thing. That's okay. 

When you're ready to really geek out, go for it. *[Is dpylr better than data.table?](http://stackoverflow.com/questions/21435339/data-table-vs-dplyr-can-one-do-something-well-the-other-cant-or-does-poorly/27840349#27840349)* is actually a great question. It isn't the first one you need to ask, however.

# Keep Learning:
The best way to really crack R is to use it for everything. Even stuff you know you could do in Excel. 
+ I can't recommend [Nathan Yau's tutorials](http://flowingdata.com/) highly enough.
+ Hadley Wickham publishes material from many of his [short courses](http://courses.had.co.nz/)
+ The folks behind RStudio have some [great cheatsheets](http://www.rstudio.com/resources/cheatsheets/)
+ [Google's 21 Part Video Series](http://flowingdata.com/2013/08/13/introduction-to-r-a-video-series-by-google/)
+ http://varianceexplained.org/RData/
+ R is Google-proof, but you can search [StackOverflow posts tagged with "R"](http://stackoverflow.com/questions/tagged/r) and get great results.