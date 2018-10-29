---
title     : Rows, Columns and Charts
layout    : page
category  : Advanced Media Institute
tagline   : Tuesday, 30 Oct 2018 6-9PM
year      : 2018
tags      : [chart, 2018]
---

If you haven't already created accounts on both [Workbench](https://app.workbenchdata.com/account/signup/) and [Datawrapper](https://app.datawrapper.de/signin) please go ahead and do that.

# Finding and Cleaning Data

Good starting points for finding data:
+ [Tips on Searching for Data](https://github.com/amandabee/workshops/wiki/Where-to-Find-Data:-Search-Tips)
+ [Where to Find Data](https://github.com/amandabee/workshops/wiki/Where-to-Find-Data)

[Peter Aldhous](https://www.peteraldhous.com/) has some fantastic tips for getting creative in his [lesson plan](http://paldhous.github.io/ucb/2016/dataviz/week5.html) from his Data Visualization course.

[Mago Torres](https://www.magotorres.net/) has a few great stories about the benefit of a little creativity if you're working on an international story. If the US won't give you details of a meeting between US and Mexican officials, don't assume you can't get what you need from the Mexican government.

## It's People!

!["Data is like soylent green"]({{site.baseurl}}/assets/imgs/itspeople.jpg)

Quiz: what is the fastest way to reduce the number of murders in a single precinct?

<!-- Answer: start categorizing them as something else. -->


## Using Workbench to Clean Data

Peter Aldhous has a great walk through that will show you how to [use OpenRefine](http://paldhous.github.io/ucb/2016/dataviz/week5.html) to clean up data.

We're going to use Workbench, only because I think it does a nice job of providing an easy to read audit trail. The two tools aren't exactly interchangeable but knowing what is possible is the first step.

I replicated those data cleaning exercises so we can walk through them and explore Workbench. The first uses a CSV of data from the [U.S. Energy Information Administration](http://www.eia.gov/cfapps/ipdbproject/iedindex3.cfm?tid=5&pid=53&aid=1&cid=regions,&syid=2000&eyid=2014&unit=TBPD) on regional oil production. The numbers given are thousands of barrels per day. (Specifically, I used their data browser to get ["Total Petroleum and Other Liquids" from 2000 to 2017](https://www.eia.gov/beta/international/data/browser/#/?pa=000gfs0000000000000000000000000000vg&c=4100000002000060000000000000g000200000000000000001&ct=2&tl_id=5-A&vs=INTL.53-1-AFRC-TBPD.A&cy=2014&vo=0&v=H&end=2017))

You can see my work at: <https://app.workbenchdata.com/workflows/5908/> but don't use "duplicate" -- we're going to walk through this from scratch.

1. Start by duplicating my workflow: <https://app.workbenchdata.com/workflows/6630/>

2. Transform it into a functional spreadsheet using ...
  * "Delete Rows" to delete rows 1-3 and 5-8
  * Edit the cell that is missing a header
  * "Rows to Header" to move the header where we want them
  * Rename  the columns to drop those annoying decimals:
  `delete me, region, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017`
  * Use the context menu on the first column, or "Select Columns" to delete it.

3. Once we've got the data cleaned up, we can actually reshape it into something we might be able to chart.
  * Select "Reshape" and then "Transpose" to transpose the data
  * Use "Rename" to label the "year" column
  * "Convert to Date and Time"
  * "Line Chart"

Secretly, Workbench's charting is a little wonky, so I'd move over to another charting tool if I wanted to see this visualized.

## More Cleaning in Workbench
[USA Spending](https://www.usaspending.gov/#/) tracks federal government spending. We can use their [Advanced Search](https://www.usaspending.gov/#/) to pull up a list of [grants to DUNS 9214214 and 124726725](https://www.usaspending.gov/#/search/fc06ccc70169c1f2695f1db9c5f9ba4b), aka Berkeley and Stanford. The data they provide is a lot cleaner than it was in 2014, but you can see an example of the kind of filtering you can do in my demo at <https://app.workbenchdata.com/workflows/5912/>

Note that this demo makes use of [regular expressions](http://velociraptor.info/talks/2014/NICAR/regex) which are awesome and also [exasperating](https://www.xkcd.com/1171/). [Rubular](http://rubular.com/) and [Regex101](https://regex101.com/) might make your regular expression journey more sane.

**Challenge:** The state of California publishes data on who gave money to support or oppose individual ballot measures. Find and tidy the Prop 10 donors.


# Making A Simple Chart

Remake: https://krugman.blogs.nytimes.com/2017/12/04/leprechauns-of-eastern-europe/

# Making Really Good Charts

# Homework, Due Thursday
Re-make the following chart in Datawrapper:

Pay attention not only to the data, but also to the framing.

Identify at least three data sources that you're interested in working with. One should be about places. Pull each into Workbench and make them Public. Share the URLs with me.

## Keep learning

+ [NICAR-L](http://www.ire.org/resource-center/listservs/subscribe-nicar-l/)
+ [NICAR and IRE conferences](http://ire.org/conferences/)
+ Stack Exchange
+ [Nathan Yau's tutorials](http://flowingdata.com/)
