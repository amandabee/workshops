
# What do I do with this ...


## ...with this logical vector?

Back in lesson 1, I showed you `is.na()` but we didn't talk about what on earth you can do with the output of something like `is.na()` or `is.nan()`. All of the `is...()` functions return a logical vector -- they walk through every value in the object you've given it and for each value, they tell you whether the test is `TRUE` or `FALSE`.

To get started, create a new numeric vector and

```
demo.vector <- sample(1:99, 25)
demo.vector > 30
```
It is *possible* but highly unlikely that your random sample of numbers under 100 includes not one number greater than 30. So you should see a mix of `TRUE` and `FALSE` values. If your sample is all `TRUE` or all `FALSE` look over your original vector -- is it just an extraordinary sample?

So if you want to drop all of the values that are less than 30 or isolate the values greater than 30, what do you *do* with that logical vector?

You use it to subset your original vector:

```
demo.vector[which(demo.vector > 30)]
# or
tmp <- demo.vector > 30
demo.vector[tmp]
demo.vector[!tmp]
```

That works if `tmp` is a logical vector. Did you figure out what the `!` operator does? See if you can figure that out.

Sometimes, you'll create a numeric vector:

```
tmp <- demo.vector %% 3
```
What does `%%` do? Check out the arithmetic help (`?Arithmetic`). So now you have a vector of values that are either 0, 1 or 2. Try playing with:

```
demo.vector[tmp]
demo.vector[tmp == 0]
demo.vector[!tmp == 0]
```

Can you figure out what the first instruction is doing wrong?  Hint: look at the first two values in `demo.vector`. The first operation uses `tmp` to decide whehter to print the first value from demo.vector, the second value, or nothing at all.

The second instruction is better. It says "show me all the values in demo.vector where the corresponding tmp value is 0."

The logical vector I encounter most often is the outcome of `is.na()` -- you run some operation, say you try to transform a series of characters that are all integers anyway into class "integer" and you get a warning: "NAs introduced by coercion" -- somewhere in there there were values that weren't integers, but where? `is.na()` will tell you.

First, populate `demo.vector` with non-numeric values, just to get some `NA`s to work with:

```
demo.vector[which(tmp == 0)] <- "I can say anything here"
demo.vector <- as.numeric(demo.vector)
View(demo.vector)
```

Make sure you at least have a sense of what is going on here. If `tmp` is a vector of the remainder (or modulo) of each value of `demo.vector` divided by 3. If `tmp` is 0, the corresponding value in `demo.vector` is definitely a multiple of what?

You used subsetting to replace those values with a phrase and forced the vector to be numeric, introducing NA values where there was text. That's kind of a silly way to get your hands on NA values, but you've done it.

Try out `is.na(demo.vector)` and then see if you can list all the NA values.

## ...logical vector about a data frame

In a vector of just 25 values, you can see pretty quickly where the NA values are. But what if you have a huge vector or data frame and you don't actually know, at a glance, whether there are NA values at all? A few useful functions, then:

`anyNA(food.trucks)` should return `TRUE` -- there are some NA values in there. But where? Which variables have NA values?

```
sapply(food.trucks, anyNA)
lapply(food.trucks, anyNA)
```

`sapply()` returns a **s**imple matix of results while `lapply()` returns a **l**ist of results. Either one can tell you that your X and Y columns have some NA values.

# More Practice

<http://ww2.coastal.edu/kingw/statistics/R-tutorials/text/quick&dirty_R_revised_090125.txt>

<05_making-programs.md>
