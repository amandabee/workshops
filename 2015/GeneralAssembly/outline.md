# Who am I?

Currently, data editor at [San Francisco Public Press](http://sfpublicpress.org/), but I've been teaching data skills at [CUNY's Graduate School of Journalism](http://www.journalism.cuny.edu/) since 2011. I take pride in making sense of this stuff for folks who think that data is really hard.

So you're going to notice that my lens is very public policy focused and that I use a lot of NYC sample data.

# Tips and Getting Help

My favorite spreadsheet function documentation wasn't even written for Excel, it was written for [LibreOffice](https://help.libreheoffice.org/Calc/Spreadsheet_Functions), but it is clear and thorough and I have yet to find a function that uses different parameters.

The first rule of Excel is that if you can explain it, there's a function that will do it. Guaranteed. You might have to nest a couple of functions, but it is in there.

## What the Heck Does This Mean

Last semester I had a student who was particularly interested in illegal conversions -- slicing residential buildings up into more units than the building code allows, usually without adequate fire exits. She was pretty excited to discover that the city publishes data about [complaints received](http://www.nyc.gov/html/dob/html/codes_and_reference_materials/foilmonthly.shtml#complaint) by the department of buildings.

So let's start by looking over that file:

### [July DOB Complaints]()

As it turns out, the city also publishes a table of [Complaint Categories](http://www.nyc.gov/html/dob/downloads/pdf/complaint_category.pdf) which is exactly what we need to make sense of the data. It took a little bit of monkeying around in [Tabula](http://tabula.technology/) to copy that cleanly into a spreadsheet but I've now got that for you.



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
True: a lot of these functions have a fourth variable, sorted or not.

# Why?

Where else have I used this?

My capoeira academy keeps a list of students who are registered for each class. We also have a master list of students with emergency contact info, nicknames (which are a big thing in capoeira).
