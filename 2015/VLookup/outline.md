# Who am I?

 I've been teaching data skills at [CUNY's Graduate School of Journalism](http:/www.journalism.cuny.edu/) since 2011. I take pride in making sense of this stuff for folks who think that data is really hard.

So you're going to notice that my lens is very public policy focused and that I use a lot of NYC sample data.

# Tips and Getting Help

My favorite spreadsheet function documentation wasn't even written for Excel, it was written for [LibreOffice](https://help.libreheoffice.org/Calc/Spreadsheet_Functions), but it is clear and thorough and I have yet to find a function that uses different parameters.

The first rule of Excel is that if you can explain it, there's a function that will do it. Guaranteed. You might have to nest a couple of functions, but it is in there.

## What the Heck Does This Mean

Last semester I had a student who was particularly interested in illegal conversions -- slicing residential buildings up into more units than the building code allows, usually without adequate fire exits. She was pretty excited to discover that the city publishes data about [complaints received](http://www.nyc.gov/html/dob/html/codes_and_reference_materials/foilmonthly.shtml#complaint) by the department of buildings.

So let's start by looking over that file:

### [June DOB Complaints](https://github.com/amandabee/workshops/blob/master/2015/VLookup/complaints_062015.xls)

We're missing something pretty key here: I have no idea which of these are calls about illegal conversions.

As it turns out, the city also publishes a table of [Complaint Categories](http://www.nyc.gov/html/dob/downloads/pdf/complaint_category.pdf) which is exactly what we need to make sense of the data. It took a little bit of monkeying around in [Tabula](http://tabula.technology/) to copy that cleanly into a spreadsheet but I've now got that for you.

I went ahead and put them into tabs on the same spreadsheet so we can focus on the formulas we want.

What we want is a single spreadsheet that includes a meaningful description of the actual complaint. Do we already have any strategies for that?

#### Formula

We're going to use my favorite formula: [=VLOOKUP()](https://help.libreoffice.org/Calc/Spreadsheet_Functions#VLOOKUP)

Let's all work in column M, for the sake of our sanity.

The code is in column H, so the search criterion is `H3`. Our lookup table is in Sheet2, `Sheet2.A2:C98`, and the value we actually want to see is in the second column of that lookup table, `2`:

`=VLOOKUP(H3,Sheet2.A2:C98,2)`

You should be seeing "Excessive Debris" as the first complaint. If you got something different let me know before we move on.

Check: Everyone has "Excessive Debris"?

#### Pulling it Down

Hover on the lower right to pull the formula down. Don't bother copying it to more than 10 or 12 rows because we've got some more fun things to troubleshoot.

First: what's going on with the automatic incrementation? How do we keep that from happening?

`=VLOOKUP(H3,Sheet2.A$2:C$98,2)`

Second: take a look at 83 Bowery (rows 11 and 14). Do some spot checking: is that value accurate?

We can handle that a couple of ways. We could make it clear that this is unsorted:

`=VLOOKUP(H3,Sheet2.A$2:C$98,2, 0)`

Or, we could sort it. Either way, I recommend doing some spot checking whenever you use `=VLOOKUP()`

### So What?
So, who can tell me how many illegal conversion complaints the DOB received in June?


# Four Functions

We're going to cover four functions today, one of them might be my favorite spreadsheet function ever. Really.

## [=VLOOKUP()](https://help.libreoffice.org/Calc/Spreadsheet_Functions#VLOOKUP) and  [=HLOOKUP()](https://help.libreoffice.org/Calc/Spreadsheet_Functions#HLOOKUP)

+ take three variables: search criteria, an array to search and a number for the column you want to return
+ returns: the contents of the matching cell

## [=INDEX()](https://help.libreoffice.org/Calc/Spreadsheet_Functions#INDEX)

+ takes three variables: reference, row and column
+ returns: the content of a cell that matches (or, a reference, though to be honest I've never even tried to use that)


## [=MATCH()](https://help.libreoffice.org/Calc/Spreadsheet_Functions#MATCH)

+ takes two variables: the search criterion and the lookup array
+ returns: the number of the first row that matches the search criterion

## What about "type"?
True: a lot of these functions have a fourth variable, sorted or not. We'll get to that.
