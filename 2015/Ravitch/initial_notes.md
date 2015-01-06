# Plan
## Intros -- 10 Min
Who we are. We should just be transparent that we're new to working together so we're still learning a bit about how we each think.
## How Journalists are Using Data -- 30 min 
Amanda will put a deck together. We can hand the mic back and forth as there are things we want to add. 
Examples of charts and data-driven stories. 
### Transformation 0 (Amanda) 15 Minutes
Maybe just take some Fred data and put it into a nicer Chart? Even the data Krugman uses? Just to start with the simplest thing. 
### Transformation 1 (Bui) 30-45 minutes
Index Data -- pull time series data, index it w/in Fred, index it in Excel
Register. Make sure users save data. Then give the option to go back and
try other transformations.
Bui will show year-on-year and 3 month moving average smoothing in Fred
Bui will make an example spreadsheet
More good examples of visualizations of similar data/or that use data transformed in this way.
### Transformation 2 (Both) 30-45 minutes
Pivot (Amanda) and then Over/Under Average (Bui)
* Use the state average and over/under -- with Gas Wells
More good examples of visualizations of similar data/or that use data transformed in this way.
### Extra
-Take a RAW SVG into Illustrator (Bui)
-ACS (Bui). Think of a fun question. 
-CartoDB (Amanda)
Possible data to work with: 
+ NY State budget data, Citizens Budget Commission, Nat'l Assn of State Budget Officers
+ Medicaid as a percent of the whole budget, state by state
Homework
*Go home and do some other transformations
Bui's Homework
Fiscal Data
Vlookup/HLookup
Amanda's Homework:
Get an NYS county shapefile for CartoDB
## Where to keep learning:
+ NICAR-L
+ NICAR and IRE conferences
+ Stack Exchange (what makes a good question)
+ Nathan Yau's tutorials
Tools we use: CartoDB, R, Highcharts, D3
More super easy tools:
* that QZ chart maker http://quartz.github.io/Chartbuilder/
* the Medium chart maker
* Datawrapper.de
* http://app.raw.densitydesign.org/ -- for flat graphics to edit in illustrator
* Theres been a lot of chatter about <http://silk.co> and people love Tableau, but I often have trouble loading graphics from both. 
# Stories to Highlight
Krugman: http://krugman.blogs.nytimes.com/2014/12/17/jebs-bubble/?_r=2
Neither of us is quite sure why we're juxtaposing the housing bubble and unemployment here, but if you did want to do that, you could go one prettier than a stock FRED chart. 
Dan Keating at the Washington Post has beaten up the DC municipal budget
http://www.washingtonpost.com/people/dan-keating
Not budget, but interesting:
http://www.washingtonpost.com/wp-srv/special/business/wealthy-bounce-back/
He's got some items ready for the wall of shame, too:
http://www.washingtonpost.com/business/economy/hospice-profits-vs-quality-care/2014/12/26/0becc386-8d40-11e4-8ff4-fb93129c9c8b_graphic.html 
Fails my rules: 
1) Have a clear takeaway. Even if the framing is "by the numbers" tell me what I'm leaving with.
Basic Data Vis Rules
* If it doesn't belong on a continuum, don't put it on a continuum. What goes between "Male Driver" and "City Street" on [this axis](http://www.dailydot.com/politics/race-and-ferguson-police-visualization/)?
Another redesign exercise:
http://www.washingtonpost.com/blogs/wonkblog/wp/2014/12/31/the-shocking-number-of-moms-who-move-in-with-others-and-how-much-money-they-save/
---------------------------
Kate Martin, city hall reporter at the Tacoma (Wash.) News
Tribune, has
In all seriousness, check out the Chicago Broken Bonds story:
http://apps.chicagotribune.com/bond-debt/
This is a data story, but it's not compiled in neat, easy, tables of data.
That's frustrating for some, I know. But the most worthwhile stories can
come from a lot of behind-the-scenes work, as I imagine this one did.
There's a section on how they researched the story here:
http://apps.chicagotribune.com/bond-debt/about.html
---------------------------
With the skyrocketing student debt we have, here's a wonderful student
project with simple, easy to view charts on how much academic students pay
to fund college athletics.
http://et.kent.edu/jmc40004/fees/  Examining the University Bill
Here's a wonderful simple piece that shows how to effectively visualize
data on college scholarships.
https://www.youtube.com/watch?v=m30LrKG8SSM    The Full Scholarship
Scoreboard
------------------------
http://openbudgetoakland.org 
http://openbudgetoakland.org./2013-2015-adopted-budget.html#FY14-15.Expense.General%20Fund:%20General%20Purpose 
There's some interesting stuff here, though it fails my journalism test (you need to find the story and tell me what it is. Hmph.)
A similar viz from Gothamist:
http://gothamist.com/2013/04/11/interactive_chart_nycs_budget_break.php
PS. There's no good reason the display values can't include all the zeros. That's a lot easier than looking at things in thousands of millions. It doesn't do much to know that $296Mill of the city capital budget goes to police. Unless we know where that money is actually going, I have no idea what the point of the visualization is.
Unfortunately, Gothamist is a steady stream of "redesign exercises" --[Which NYC Government Agencies Are The Most Corrupt?](http://gothamist.com/2014/05/14/nyc_government_corruption.php) is a nice rundown of, if not the most corrupt agencies in the city, those agencies the city spends the most time investigating corruption complaints about. It's a nice start. And a nice way to start fishing for better stories, like *Why are there so many investigations in the School Construction Authority?*
I care a lot about foster care
----------------------------
I was thinking about the presentation phase of the seminar.
I just tried data wrapper. <https://datawrapper.de/> I think it's really
cool. And it just occurs to me that I also rely on RAW density design
<http://app.raw.densitydesign.org/#%2F>too.
Both are very intuitive and exports into files that are easy to use. Then
we can show people how a basic flat file can be edited by a designer in the
newsroom. Then we can show the raw output from these programs and then a
version after someone goes through it in illustrator; maybe just to 'wow'
them. 
What do you think?
------------------------
Looking at just where FEMA is buying up property -- and it isn't just along the coasts.
http://www.npr.org/blogs/thetwo-way/2014/10/20/357611987/map-femas-buying-out-flood-prone-homes-but-not-where-you-might-expect
I don't know if I'm entirely surprised -- the Mississippi floods, too -- but this is still a good story. The next question is, Why?
Data Viz to put a story in context:
NPR did some reporting that is a little old at this point, though few of the details have changed as far as I know. They looked into data that showed that native kids in South Dakota were significantly more likely to be placed in foster care than white kids, even when the circumstances were similar, and that native kids were overwhelmingly going to (and, according to the Lakota People's Law Project being prescribed anti-psychotics at much higher rates --SJ Merc did a similar story on prescription drugs in CA. You should all do that story.) white foster homes. Their data viz piece looked at all fifty states http://www.npr.org/2011/10/25/141475618/disproportionality-rates-of-native-american-children-in-foster-care and flagged the states where native kids are substantially more likely to be in foster care and in non-native homes. 
Daily News on NYCHA Overtime
[NYCHA paid $106 million in overtime to workers in 2014 — with plumbers at top of list](http://www.nydailynews.com/new-york/exclusive-nycha-paid-106-million-overtime-2014-article-1.2046654)
[City Council members confront NYCHA over skyrocketing overtime costs](http://www.nydailynews.com/news/politics/nycha-confronted-council-skyrocketing-overtime-costs-article-1.2048002)
The New York City Housing Authority has been doing a poor job of addressing major mold problems in their properties. CUNY Journalism School is doing an intensive reporting project to look more closely at the extent of the problem, and one thing they came up with is this. The reporting actually led to a city council hearing on overtime costs in the agency. The dataviz here isn't much to write home about but the numbers are big and they say a lot about why the agency is having such a hard time dealing with the underlying plumbing issues. 
-------------------------
Most of the charts in Dave Gilson's Mother Jones piece, [Can't Touch This](http://www.motherjones.com/politics/2013/12/pentagon-budget-deal-charts-cuts) are pretty good. But holy bubbles, batman. That's the least helpful chart in there.
More:
[Housing In 2015: Four Reasons For Optimism (And One For Worry)](http://www.npr.org/2015/01/05/374232461/housing-in-2015-four-reasons-for-optimism-and-one-for-worry)
--------------------------
MaryJo Webster didn't put any charts in her report on opiate addiction,[Hooked on opiates: More legal use leads to more addiction, crimes, deaths](http://www.twincities.com/localnews/ci_22195739/hooked-opiates-more-legal-use-leads-more-addiction) but she did tap the DEA's "Automation of
Reports and Consolidated Orders System" also known as ARCOS in her reporting. 
