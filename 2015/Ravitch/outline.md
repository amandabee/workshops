Thursday, January 8
1:30 - 5:30
Room 440

## 10 Min: Intros 
Who we are. We're new to working together so we're still learning a bit about how we each think.

## 30 Min: How Journalists are Using Data (Amanda, but chime in)
Examples of charts and data-driven stories. 

### 20 Min: Making pretty charts is easy (Amanda)

[Jeb’s Bubble](http://krugman.blogs.nytimes.com/2014/12/17/jebs-bubble/), *New York Times*, Dec 14, 2014
We could have a longer conversation about Krugman's decision to compare Miami home prices and state-wide unemployment, but I want us all to dive into FRED and get the data he used so we can chart it more prettily. 

First: get thee to [FRED](http://research.stlouisfed.org/fred2/graph/).

We're looking for Miami home prices, so just start typing "Miami Home" and you'll see the series: S&P/Case-Shiller FL-Miami Home Price Index© and export the data. 

To filter, put your cursor in cell A10 and then select "Filter"; use the "standard filter" for >= "1999-01-01" (Jeb's term: 1999-2007)

Copy it over to [Chartbuilder](http://quartz.github.io/Chartbuilder/), name the columns "date" and anything you want. (Chartbuilder needs you to say it is a date, explicitly). 

*Or*
Add the Miami Dade unemployment and export it again. Check the box next to one of the data series to add another axis and fiddle with the suffix and max. 


### 45 Min: Making an Index (Bui) 
Index Data -- pull time series data, index it w/in Fred, index it in Excel
Register. Make sure users save data. Then give the option to go back and
try other transformations.
Bui will show year-on-year and 3 month moving average smoothing in Fred
Bui will make an example spreadsheet
More good examples of visualizations of similar data/or that use data transformed in this way.

### 20 Min: Pivot Tables (Amanda)
Pivot and summarize gas well data. 

> The Department of Environmental Conservation publishes [data on gas wells](http://www.dec.ny.gov/energy/1603.html) in New York State. Download it: How many wells are there per county? 


### 20 Min: Over/Under Average (Bui)
Use the state average and over/under -- with Gas Wells
More good examples of visualizations of similar data/or that use data transformed in this way.

### Extra: more things we can do if we have time
-Take a RAW SVG into Illustrator (Bui)
-ACS (Bui). Think of a fun question. 
-CartoDB (Amanda)
** TK: County Shapefile
** Map the well data

## Where to keep learning:
+ [NICAR-L](http://www.ire.org/resource-center/listservs/subscribe-nicar-l/)
+ [NICAR and IRE conferences](http://ire.org/conferences/)
+ Stack Exchange (what makes a good question)
+ [Nathan Yau's tutorials](http://flowingdata.com/)
