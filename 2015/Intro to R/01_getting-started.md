# Installing

You should use RStudio. Someone told me recently that they didn't want to be weak, so they weren't using an IDE. Except that they were not a powerhouse programmer. This wasn't someone who was like "oh, no, it's cool. I just chew rocks, see!" This was more like "I can't do this because my jaw hurts and my teeth are all broken, but I have to chew these rocks, I know all the tough guys chew rocks." Trust me. The tough guys have a functional working environment set up. It probably involves emacs, but for now, trust me. Use RStudio.

If you get stuck installing R and RStudio, let me know. Otherwise, you should be ready to start ...

# Finding your Way Around

Where I suggest trying out commands, I *strongly* encourage you to type them out yourself to run them. It's better for your brain, I swear.


## Important operators

Assignment operator: `<-`

What you might think of as a variable `x <- 5` is functionally a numeric vector of length 1.

Basic command line stuff: you might be used to seeing a result when you *do* something. You won't always. If I set `x <- 1` or `x <- "Amanda"` R will just do that, just create the vector. You can ask R to print the vector, or in RStudio you can look at your environment pane and you ought to see the new values.

Range operator: `:`

I can say I want all the numbers between 1 and 20, inclusive, with `1:20`. So `x <- 1:20` will give you:

    > x
     [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20


## R Objects:

Everything is an object. But WTF does that mean? We'll get there.

### Classes of objects
A vector is the most basic object in R. A vector has to contain elements of a like class, unless the vector is a list.


Numbers are super complicated. Why? Good question. I don't know yet. But the classes of objects include a bunch of number-ish types. Numeric, Complex, Integers.

+ logical: always true or false (or on or off). Logical values can be represented a few different ways, 0 vs. 1, TRUE vs. FALSE, T vs F.
+ numeric: the default number class in R is a decimal value. 5 can be numeric, or 5.341 or 3.1425.
+ integer: you should know this, but an integer is any real, whole number. 2, 7. That sort of thing. If you say x <- 1 you'll get a numeric type. Say x <- 1L to get an integer explicitly.

Try it:

```
x <- 1
class(x)

x <- 1L
class(x)
```
+ complex: defined via the pure imaginary value i. File this one under "we'll get to it later"

+ character: a character is any letter form. Examples of characters include "a", "5", "*". The difference between the character 5 and the number 5 is that you can't do any math with a character. All you can do is string it together with other characters to make a word or a sentence or a novel.

Some additional type that come up but aren't true classes:

+ NaN: not a number
+ NA: not available
+ Inf: infinity; try it: `1/0`


### Attributes of Objects
I have a hard time with the difference between "attributes" and "classes," even though the concept makes a lot of sense to me. I think the problem is that I'm never really sure whether being female is a class, or an attribute. Ditto, race. So analogies to real people tend to break down a little bit. However, some of the *attributes* that an object may have include:
+ names
+ dimension names
+ dimensions (A matrix has some number of rows, columns. A multidimensional array has even more dimensions)
+ class (every object has a class, that class is one of the objects attributes.)
+ length (the number of items in the array)
+ metadatas (user defined attributes)


Good questions:
Q: If I define `x` with `x <- 1` then x definitely has a class. It's numeric. But it has no attributes. Shouldn't it at least have a class?

```
> x <- 1
> attributes(x)
NULL
> x <- 1:20
> attributes(x)
NULL
```
Q: why isn't length just a dimension?

## Creating Vectors

The most basic function you'll use to create a vector is `c()` or "combine".

```
x <- c(TRUE, FALSE)
y <- c("a", "b", "c")
```

What class of vector do you think that created? Guess, and then check yourself with `class(x)`. Then try these and see if you can articulate the distinction:

```
x <- c(1, 2, 3)
y <- c("1", "2", "3")
z <- c(1L, 2L, 3L)
zz <- c(1:3)
```
Look at the class of each. What do you think is going on here?

You can also use the `vector()` command to create a vector: `vector("numeric", length = 10)`

The vector command takes two arguments: class and length. You need that unpacked? a command is something you type at the command line. It is the name by which you instruct (command) your computer to run some set of processes. And depending on the programming language and environment you're working with, a command usually takes a few arguments. If you're commanding the computer to open a file, the name of the file is probably one of the arguments you need to give. Don't just open anything, open a specific thing.

If you mix different classes in a single vector, R will coerce the values into the same class. You can play with how that comes out, too.  

## Fixing the Class

You can force an object to another class with the `as.*()` functions: `as.numeric()`, `as.logical()`, `as.character()`. Try it out:

```
x <- 0:5
as.character(x)
class(x)
class(as.character(x))
```

And then make it fun:

```
y <- c("3", "2", "1", "Q")
as.numeric(y)
```

You should see an error, something like

> Warning message: NAs introduced by coercion

Why do you think you got that error? Try making a new object with `y.numeric <- as.numeric(y)` and then take a look at the object with `y.numeric`. The `class` is numeric, but since that last value, Q, is not available as a number, it is lost and stored only as "NA". R was able to coerce the characters 1, 2 and 3 into numbers, but it didn't know how to coerce Q.

What if we throw in a number that isn't an integer: `y <- c(y, 3.33)` -- does that change the class of y? Test out the difference between these. Take a look at how R coerces the number that is not an integer, or what happens if you try to transform your numeric vector back into a character:

```
y.numeric <- as.numeric(y)
y.integer <- as.integer(y)
y.character <- as.character(y.numeric)
```

You can also use the `is.*()` functions to test for types. Try out `is.numeric()`, `is.integer()` and `is.character()` on a few of your vectors. Think about what you expect and then look at the result.

## Lists

Lists are vectors, but they can contain elements of different classes. That turns out to be handy later.

```
x <- list( 1 , "a" , TRUE , 1 + 4i )
class(y[4])
class(x[4])
class(x[[4]])
```

## Matrices

Matrices are vectors that have more than one dimension -- they're organized into rows and columns. Play around with some matrix commands and take notes on what is confusing to you.


```
demo.matrix <- matrix(nrow = 5 , ncol = 4 )
demo.matrix
```

And then take a look at the attributes of your matrix:

```
dim(demo.matrix)
attributes(demo.matrix)
```

Try filling a matrix with values. Do you see the pattern in how the matrix is populated?

```
demo.matrix <- matrix(1:20, nrow = 5, ncol = 4)
demo.matrix
demo.vector <- 1:20
demo.matrix <- matrix(demo.vector, nrow=4, ncol=5)
demo.matrix
dim(demo.matrix)
attributes(demo.matrix)
```

You can build on a matrix with `rbind()` and `cbind()`. We'll come to those when we have a real use for them.


Q: Why would you use a matrix as opposed to a data frame?
A: A matrix has to have a single type of data -- all integers or all characters or all complex numbers. But a matrix is more memory efficient.  


## Factors

Factors are vectors, but they're categorical. Again, we'll see soon why this is important, but if you have data about, say, [building complaints](https://nycopendata.socrata.com/Housing-Development/DOB-Complaints-Received/eabe-havv?) with a column full of numbers for "compliant codes," each of those numbers reflects [a different type of complaint](http://www.nyc.gov/html/dob/downloads/pdf/complaint_category.pdf). A factor is an efficient way to handle that same data. There are about 125 different possible complaint codes. That's a lot, but it is still a closed set. Or maybe you're looking at  [mobile food facility permits](https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat) -- there are only three possible values for "Type" -- truck, push cart (and unknown). There are only a few possible status values, too. These are all categorical variables and in R they'd belong in a factor.  
Let's play with a slice of that permit data to see what you can do with factors:

```
permit.status <- factor(c( "APPROVED", "REQUESTED", "APPROVED", "REQUESTED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "EXPIRED", "APPROVED", "REQUESTED", "REQUESTED", "APPROVED", "APPROVED", "APPROVED", "APPROVED", "APPROVED", "EXPIRED"))
permit.status
```

Notice that the factor includes "levels" -- those are the possible values in this factor.

```
table(permit.status)
unclass(permit.status)
```

Try adding bad data to the factor and look at what comes out:

```
permit.status <- c(permit.status, "Bad data")
permit.status
```

What do you think is going on there?

You can set the baseline value or reorder a factor, but that, too is something we'll talk more about when we need to use it.

## Working with Missing values

*vocabulary* atomic vector: Almost all of the vectors we've worked with so far were "atomic" -- lists are the exception, lists are not atomic vectors.

We've definitely created some NA values by now. My `y.numeric` vector has some. As does my `y.integer` vector. Yours may not because you played around with them (as instructed). To get us all back on the same page, create a vector with some NA values: `demo.vector <- c(3, 2, 1, NA, 1, 2, 3)`

Then we can test it out: `is.na(demo.vector)`

In a larger vector or data frame (we'll get to those) we might want to know, more generally, whether or not there are any `NA` values. For that there's `anyNA(demo.vector)`

NaN is like NA, but specifically means "not a number". Set one of the values in `demo.vector` to `NaN` with `demo.vector[3] <- NaN` and try testing it with both `is.na()` and `is.nan()`. What do you make of that?

The output of `is.na()` or `is.nan()` is just a vector of logical values. For each item in demo.vector, we know whether or not it was NA. So how do we actually use that?

Well...
