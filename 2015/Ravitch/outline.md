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

*Bonus*  
If we have time or inclination, we can look at Charted which is super limited but makes some nice stuff. 

[Chart](http://www.charted.co/?{%22dataUrl%22%3A%22https%3A%2F%2Fraw.githubusercontent.com%2Famandabee%2Fworkshops%2Fmaster%2F2015%2FRavitch%2Fdata%2Ffred_miami_example.csv%22%2C%22seriesNames%22%3A{%220%22%3A%22%20S%20%26%20P%20Case-Shiller%20FL-Miami%20Home%20Price%20Index%22%2C%221%22%3A%22%20Miami-Dade%20Unemployment%22}%2C%22charts%22%3A[{%22type%22%3A%22line%22%2C%22title%22%3A%22Just%20a%20Bubble%3F%22%2C%22note%22%3A%22As%20home%20prices%20fell%2C%20jobs%20in%20Miami-Dade%20began%20drying%20up.%20Without%20the%20housing%20bubble%2C%20unemployment%20climbed%20right%20out%20of%20those%20record%20lows.%20http%3A%2F%2Fkrugman.blogs.nytimes.com%2F2014%2F12%2F17%2Fjebs-bubble%2F%22}%2C{%22type%22%3A%22line%22%2C%22title%22%3A%22%20%22%2C%22series%22%3A[1]}]}) | [Data](https://raw.githubusercontent.com/amandabee/workshops/master/2015/Ravitch/data/fred_miami_example.csv)


### 45 Min: Making an Index (Bui) 
Index Data -- pull time series data, index it w/in Fred, index it in Excel

Register. Make sure users save data. Then give the option to go back and
try other transformations.

Bui will show year-on-year and 3 month moving average smoothing in Fred

Bui will make an example spreadsheet

More good examples of visualizations of similar data/or that use data transformed in this way.

[Data](https://www.dropbox.com/s/rhxcmokoxfcgvyg/wisconsin-revenues.xlsx)

### 20 Min: Pivot Tables (Amanda)
Pivot and summarize gas well data. 

> The Department of Environmental Conservation publishes [data on gas wells](http://www.dec.ny.gov/energy/1603.html) in New York State. Download it: How many wells are there per county? 


### 20 Min: Over/Under Average (Bui)
Use the state average and over/under -- with Gas Wells
More good examples of visualizations of similar data/or that use data transformed in this way.

### Extra: more things we can do if we have time
+ Take a RAW SVG into Illustrator (Bui)
+ ACS (Bui). Think of a fun question. 
+ CartoDB (Amanda)
** [NYS County Shapefile](http://cugir.mannlib.cornell.edu/bucketinfo.jsp?id=7865) (note that you have to unzip it twice)
** Map the well data
+ [Datatables](https://github.com/amandabee/cunyjdata/blob/22ba0ce3c52cc91d0e8cab817c9d69f830049d54/lecture%20notes/showyourwork.md)


## Where to keep learning:
+ [NICAR-L](http://www.ire.org/resource-center/listservs/subscribe-nicar-l/)
+ [NICAR and IRE conferences](http://ire.org/conferences/)
+ Stack Exchange (what makes a good question)
+ [Nathan Yau's tutorials](http://flowingdata.com/)
