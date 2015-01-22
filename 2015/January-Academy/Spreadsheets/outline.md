#  Fri. Jan. 23, 2015
9:30 a.m.-12:30 p.m.

> Brush Up Your Excel Skills – Amanda Hickman – Room 436 (14 students max)

> You’ll learn how to work in a spreadsheet to add context and depth to an existing story or find a new stories to pursue. You’ll learn how to import data in Excel and how to analyze it. Among the concepts you’ll learn include how to sort data, apply formulas, and create a chart. I’ll also provide list of the most useful and easy to access data sets for future reference. Many computer-assisted reporting stories can be done using just Excel. This class will give you the tools necessary to start doing those stories.


# Welcome
Core principle: if you can describe it, there's a function for it. From pulling the three letters after the decimal in a string to calculating interest payments on a loan over time.



# VLOOKUP

> The Department of Environmental Conservation publishes [data on gas wells](http://www.dec.ny.gov/energy/1603.html) in New York State. 

Most of you worked with this data last semester, but we didn't spend much time in the metadata. 

Copy the "Well Type Codes" into their own sheet.

> Save as XLS; keep track of your format. Is it XLS or CSV? What is the error you see when you save it?

> Learn to read errors. This stuff isn't arbitrary. 

Functions that work in LibreOffice Calc `=LOOKUP(A3,WellTypeCodes.A$1:A$23,Sheet1.B$1:B$23)` and `=VLOOKUP(A3,WellTypeCodes.A$1:B$23,2)`

And in Microsoft Excel: `=LOOKUP(A3, WellTypeCodes!A$1:A$23,WellTypeCodes!B$1:B$23)` and `=VLOOKUP(A3,WellTypeCodes!A$1:B$23,2)`

Discuss: $ to prevent incrementing; managing where your cursor is, what is an "argument"

LOOKUP vs VLOOKUP vs HLOOKUP

Use Paste > Transpose to make a horizontal table. This is all pretty rational. 

`=LOOKUP(A3,WellTypeCodes!E$1:AA$2)` or `=HLOOKUP(A3,WellTypeCodes!E$1:AA$2,2)`

# INDEX/MATCH

Basically works much like a LOOKUP, but it is much more flexible (and complicated).
<http://trumpexcel.com/2013/09/excel-index-formula-its-magical/>

# LEFT, RIGHT, FIND, MID, LEN

Using [Wisconsin Revenue Data](https://github.com/amandabee/workshops/blob/master/2015/Ravitch/data/wi_revenues.csv), we need to get county names that match the county names in the state shapefile. [starting point](http://dnr.wi.gov/maps/gis/geolibrary.html) | [actual download](ftp://dnrftp01.wi.gov/geodata/county_bnds/)

* `=FIND("County",A2)` 
* `=LEFT(A2,FIND("County",A2))`
* `=LEFT(A2,FIND("County",A2)-1)`
* `=TRIM(LEFT(A2,FIND("County",A2)-1))`
