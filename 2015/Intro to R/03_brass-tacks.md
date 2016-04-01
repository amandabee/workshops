# Getting organized

We could have started with this, but dumping a lot of workflow information on you be  fore you even start working tends to give folks headaches.

However...

You can **save your RStudio environment** -- all the history, data, vectors, and open tabs in a file called `.RData` -- you can save a lot of those files (and you can name them however you want as long as you add that `.RData` extension). So you can work through this course in one workspace and start to tackle something of your own in another.

You can also **run commands from a script** with <kbd>ctrl</kbd>-<kbd>enter</kbd> That's super handy for saving work you might want to repeat, and much easier than editing at the command line and then trying to cobble your workflow together from the history. Plus, when you screw up, you can edit and hit <kbd>ctrl</kbd>-<kbd>enter</kbd> again to mend your ways. So start working from a script.


## Names and Naming

You don't have to have a data frame to name values. You can actually name the values in a list or vector, too.

```
sizes <- c(8, 9.5, "M", "unknown")
names(sizes)
names(sizes) <- c("Pants", "Shoes", "Tops", "Hat")
names(sizes)
sizes
```

Another thing I found fun and or weird about R: you can print out an objects names, and use that same function to assign new values to it. That's the difference between `names(sizes)` and `names(sizes) <- ...`

## Subsetting

For better or for worse, there are a ton of different ways you can subset data in R. One is probably objectively better than another, but only in the most abstract sense. (My context here is public data, which can be pretty big but never gets *that* big.)

Operators:
+ `[` returns an object with the same class as the original. If x is a list `x[1]` will return a list.
+ `[[` returns a vector. If x is a list, x[[1]] will return a vector
+ `$`  extracts objects by name, instead of by position


### Subsetting a Vector
Just to have something to work with, use the `sample()` command to create a vector of random numbers:

```
demo.vector <- sample(1:99, 25)
demo.vector
```

Take a look at the documentation for `sample()` and explain what "1:99" and "25" represent in the first line. Try subsetting it with `demo.vector[7]` -- how do you think you'd print the first item in this vector? The 20th? Try a few more

```
demo.vector[1:13]
demo.vector[c(1,13)]
```

Describe what you see happening in the first example? The second? More:

```
demo.vector[demo.vector > 30]
demo.vector[demo.vector > 30 & demo.vector < 60]
demo.vector > 30
```

The last example produces a logical vector. For each  item in `demo.vector` it says whether or not the test is TRUE. If we want to see those values, we'd do:

```
ex <- demo.vector > 30
demo.vector[ex]
```

That should come out looking exactly like the outcome of `demo.vector[demo.vector > 30]`. If it doesn't, there's something fishy going on and you should get help!

### Subsetting a List

That `sizes` vector we created earlier is probably much better suited to a list, so that the numbers can be numbers. So:

```
sizes <- list(8, 9.5, "M", "unknown")
names(sizes) <- c("Pants", "Shoes", "Tops", "Hat")
```

Then we can subset it with ...

```
sizes[4]
sizes[[4]]
sizes$Pants
sizes[Pants]
sizes[[Pants]]
```

What is the difference between `sizes[4]` and `sizes[[4]]`? It is subtle, but will come up again later. You actually have a bunch more syntax operators. Here's some fancy, however: `sizes$S`. Rename the items in the list and play around with how that works.

```
names(sizes) <- c("Slacks", "Shoes", "Shirts", "Hat")  
sizes$S
sizes$Sl
```

### Subsetting Negatives

The `!` operator means "not" or "is not" in many programming languages.

### Subsetting a Frame

A frame has two dimensions, so you have to provide both in your brackets when you subset. If you don't still have the food truck data in your workspace, go back to lesson 2 and recreate it.

Try out some basic subsets:

```
food.trucks$FacilityType
names(food.trucks)
food.trucks[1:10, c(2:3, 11, 19)]
food.trucks[1,2]
food.trucks[2,2]
food.trucks[3,2]
```

You should start to see that data frame subsetting uses the first value to pick the column and the second to pick the row. so `[1,2]`, `[2,2]`, and `[3,2]` will show you the first three values in the second column. Or you could think of that as the first three observations of the second variable. Looking for `[1:10]` is just a shorter way of saying `[c(1,2,3,4,5,6,7,8,9,10)]. Or, as in the first example, you can call a variable by name, using a `$` operator.





Creating a logical vector and then extracting by it.

<04_appendix.md>
