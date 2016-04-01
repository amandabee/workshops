
# Data Frames

Vectors, Matrices and Factors are neat, but if you've been wondering when you are going to get to the *useful* part of R, well... we're here. More or less.

A data frame feels a lot like what you probably think of as a table. A data frame is technically a list in which every element of the list has the same length, but if you're used to working with tables, you can think of each element in the list as a column. The number of rows is the length of the list. And each column/element is a vector (or a factor, which is a special kind of vector).

* row.names
* read.table() or read.csv()

To create a data frame from scratch, you'd do something like:

```
demo.frame <- data.frame(flower = c("Roses", "Violets"),
                         color  = c("red", "blue"))
```
*Pro Tip* You see how I indented the "color" vector above? There's no canonical style guide for R, not like there is for Python, but there are two good style guides, one [from Google](https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml) and one [from Hadley Wickam](http://adv-r.had.co.nz/Style.html). Both are pretty clear about how indentation ought to look. If you want to have a debate about coding style, I'm sure someone would love to hash that out with you. But for now, use one or the other of those style guides religiously.

You can see a lot of extra information about your data frame, too:

```
attributes(demo.frame)
attr(demo.frame, "names")
attr(demo.frame, "row.names")
nrow(demo.frame)
ncol(demo.frame)
```
and if you want to add to it, you can:

```
demo.frame <- cbind(demo.frame, stems = c("thorny", "fuzzy"))
```

take a stab at describing what just happened there. What just happened there?

You can also add another row:

```
new.flower <- c("Poppy", "orange", "unknown")
new.frame <- rbind(demo.frame, new.flower)
```

Except... you got an error (or ... you should have). Look at the frame you generated and the warning messages and see if you can at least explain what the problem is. Hint: try running `class(new.frame$flower)` and `new.frame$flower`

What is happening here? The columns in your data frame are stored as factors -- even though you only have two rows, R thinks that the data in these rows is fixed categories. So you can try this:

```
new.flower <- c("Roses", "blue", "thorny")
new.frame <- rbind(demo.frame, new.flower)
```

which works, but doesn't help you build out a whole entry!

This, is one of the places where R makes my head explode a little bit. I never said that flowers are always either roses or violets. So why...? I don't know. But there are a few ways to handle this. You can go back and add `stringsAsFactors = FALSE` to the initial data.frame definition:

```
demo.frame <- data.frame(flower = c("Roses", "Violets"),
                         color = c("red", "blue"),
                         stringsAsFactors = FALSE)
```

Or ... there are actually [a few ways to fix it](http://stackoverflow.com/questions/2851015/convert-data-frame-columns-from-factors-to-characters) using `lapply()` and `sapply()` but those are definitely for chapter 3. So instead, take a step back and see if you can create a new frame and then use `rbind()` to add a third row to it.

## Read and Write

Creating data frames from scratch is handy for seeing how things work but I'm absolutely certain that is not why you are here.

So how do you read in data from elsewhere? Enter `read.table()` and `read.csv()`. They're interchangeable, they just have different defaults. Try running `?read.table` to display the documentation for `read.table()` in you RStudio help pane.

R's documentation is exasperatingly terse. I usually can't make heads or tails of it, not when I'm stuck and frustrated, anyway. But it does spell some things out for you. Take a look at the Usage information and see if you can articulate at least one difference between the default attributes of `read.table()` and `read.csv()`.

Then, try it out. But first ...

### Working Directories

If you want to work with files on your computer somewhere, you need to a) know where they are and b) know how to refer to them from within R. If you aren't used to working with paths, we should probably take a step way back and pull out some basic command line lessons. If you are, test out...

```
getwd()
setwd("/tmp")
getwd()
dir.create("test")
list.files()
```
You should recognize these as analogs to the bash commands `pwd`, `cd`, `mkdir` and `ls`. If you don't, or if this is all really, really cryptic to you, I recommend taking a look at Chris Keller's [Command Line Basics](https://github.com/chrislkeller/nicar15-command-line-basics) materials.

### Reading Files

Okay. I have a folder called "Sample Data," and one of the files in it I downloaded from San Francisco's open data portal. It's called "Mobile_Food_Facilty_Permit.csv".

So I'm going to do ...

```
setwd("Public/workshops/2015/Intro to R")
food.trucks <- read.csv("Mobile_Food_Facility_Permit.csv")
```

*Pro Tip* tab completion is your friend! Use it.

If you look in your RStudio environment pane, you should see the data frame there. Double click it to open it in the source pane. (Or try `View(food.trucks)`). Look at each column and try to decide what class you think is most appropriate. Is it an integer? numeric? categorical? strings? Then do some spot checking.

```
class(food.trucks$Status)
class(food.trucks$FoodItems)
```

What do you think? Is Status a categorical column, ie. should it be a factor? What about FoodItems?

If you want to see the class of each variable in one big dump, you can do either `str(food.trucks)` or `lapply(food.trucks, class)`. The second function, `lapply()` is a bit complex. We'll get to it before we're done, though.

Since we have some variables that should be factors, and some that should probably be strings, we don't want to use `stringsAsFactors = FALSE`.

Instead, `read.csv()` has an optional attribute, `colClasses` that we'll use:

```
column.classes <- c("integer", "character", "factor", "integer", "character", "character",
                    "character", "character", "character", "character", "factor", "character",
                    "numeric", "numeric", "numeric", "numeric", "character", "character",
                    "character", "character", "factor", "character", "character")

food.trucks.alt <- read.csv("Mobile_Food_Facility_Permit.csv", colClasses = column.classes)
```

If you look closely, you'll see that the block and lot fields are all characters. See if you can figure out why I did that? (Hint: try using "numeric" or "integer" there and take a look at the errors.)

`read.table()` and `read.csv()` have a bunch of other possible attributes available. Does the file you're reading have a header row? Is it comma separated or does it use some other character? Should the import use a particular column as the row names?

Should R skip comment lines? Or are there some header rows to skip?

Those attributes are all fairly well described in the documentation (which, again, lives at `?read.table`) so take a look and if you have questions, ask!



#### How Big is Too Big?

R can handle some pretty big files. Certainly it makes it easy to work with files that are too big for Exel or Calc (or too big for them to do more than slow your computer to a crawl) but ... how big is too big?

Some basic tips:
Any dataset that is larger than your RAM is going to be a problem. On a Mac or Linux machine, you can run `vmstat -s -SM` or `free -lm` to see how much RAM you have (and how much is available). My output shows 7803, so I have 7803 MB or 7.6 GB of RAM.

In general, things will go more smoothly if your RAM is about twice the size of your data set.

Specifiying classes with the `colClasses` attribute will save R from having to evaluate the whole column and decide what class is most appropriate.

Use the `nrows` attribute to test your `read.table()` function on a slice of the data. If you add `nrows = 50` you'll only import 50 rows, no matter how big your data actually is. That gives you a chance to troubleshoot your function and capture the column classes.  

Figure out how many lines are in your data and use `nrows` to tell R how many rows it is importing. You can use `wc -l` at the command line to find out how many rows your file contains.

But all of this starts to be relevant when you get into millions of rows.


### Writing Data

You'll never guess how you create a CSV or text file from a data table. Hint: everything you can do with `read.table()` you can do with `write.table()`.

You can also use `dump()` and `dput()` to write out a text file that you can easily pull back into R for future use. The output includes some useful metadata, and depending on where you started it can be a bit smaller than the raw CSV file. For instance, because every character takes up a little bit of space in a file, saving the "status" column as a list of single digit values and a key to which status each figure represents takes up less space than spelling out "APPROVED" over and over again.

R stores your whole workspace as binary data. If you open a terminal and do `head .RData` you'll see a ton of gibberish. That's space efficient, but if you're actually working with version control, saving the `dput()` output will allow you to track changes in, say, git. That's handy.

Try it: `dput(food.trucks, file="dput_test.R")` and then look at the text file you created. And then try `write.csv(food.trucks, file="write_test.csv")`. Each one has its uses.

You can read your `dput()` back into R with `dget()`

You can also use `dump()` to dump multiple objects at once. Try that, too:

```
dump(c("food.trucks", "classes"), file="dump_test.R")
rm(food.trucks,classes)
source("dump_test.R")
```

<03_brass-tacks.md>
