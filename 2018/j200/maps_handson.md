---
title     : Making a Map
layout    : post
category  : hands-on
tags      : [maps]
author    : Amanda Hickman
---

You should already have a [Datawrapper](https://www.datawrapper.de/) account. If you don't, please make one!

Caroline Kee covered a pretty straightforward, if disturbing, CDC report on [rising suicide rates nationwide](https://www.buzzfeed.com/carolinekee/suicide-rates-increase-us-2016-all-states). The map she included came directly from the CDC. It isn't a terrible map, but there are a few ways it could be much better. Can you tell at a glance **which states stand out** as having the most severe increase?

Take a look at the legend. The sizes on those buckets are wild. The darkest has a 20 percentage pt spread, and the next has just a six percentage pt spread. These are quantiles: the CDC designed the buckets so that each would have 12 states in it. And then they chipped off Nevada which is the only state that saw a decrease.

Luckily, BuzzFeed News actually links to the original report -- the raw data is available in the CDC's [original report](https://www.cdc.gov/vitalsigns/suicide/infographic.html#graphic1) which appeared in the [Morbidity and Mortality Weekly Report](https://www.cdc.gov/mmwr/index.html). To avoid hiccups in the copy and paste process, I went ahead and pulled the numbers for you. Question: is this data organized into points, lines or shapes?

<https://app.workbenchdata.com/workflows/5852> ([csv](/j200/assets/mapping_exercise/cdc_suicide.csv))

Workbench is still a work in progress but one thing it does well is show the transformations I applied to the original data.

**Step 0:** Download the csv from Workbench.

**Step 1:** Log into Datawrapper and choose "Create a map". We want a choropleth.

![create a map](/j200/assets/mapping_exercise/dw1.png)

**Step 2:** (Datawrapper thinks of this as Step 1), search for "USA States" under "What type of map do you want to create?".

Fun question that came up Week 1, that I couldn't answer off the top of my head: *Why is the electoral college hex map different from the population map?* It turns out there are a few reasons. First, as I noted, the census updates population estimates more often than the electoral college is redesigned. Second, the actual electors aren't based entirely on population. Each state gets one Elector for each senator (2) and one for each congress person (varies, maps are redrawn every 10 years). DC always gets 3 Electors (or, no more than the least populous state).

The Washington Post did some deeper reporting asking why North Dakota stands out so much.  [It's worth reading if you're interested in that question.](https://www.washingtonpost.com/news/to-your-health/wp/2018/06/07/u-s-suicide-rates-rise-sharply-across-the-country-new-report-shows/)

**Step 3:** Import your dataset. But get in the habit of reading modal windows. Do we have ISO-Codes or Names here?

Once you've uploaded your data, read through the next screen, too.

![pay attention](/j200/assets/mapping_exercise/columns.png)

As you step through these dialog windows, they should make sense!

You've already got a much cleaner map. But we're going to hit `Proceed` and make it better.

**Step 4:** Customize your gradient and your tooltips. The average nationwide was a 25.4% increase. You could reasonably center your buckets there. Or you can keep the default gradient. And make some tooltips.

```
\{\{ Increase_Decrease }} of {{ Overall_Percent_Change }}%
```

**Step 5:** Add your title and description. Never skip the metadata.

**Title:** What is the takeaway here? In the story, they captioned this "Suicide rates increased in almost all states between 1999 and 2016 — some by more than 30%.", but the chart uses "Figure. Percent change in annual suicide rate,* by state-- United States , from 1999/2001 to 2014/2016"

**Caption:** Tell your readers more about what we're looking at. "A recent CDC report found that there is just one state in the union -- Nevada -- where suicides did  not rise between 1999 and 2016."

**Step 6:** Embed it!

Fun Question that came up Week 3 -- *If these rates are both based on the 2000 population, how much does this map just reflect population growth?* One answer, from the Census, is that between 2000 and 2010 [Nevada was the US state with the the highest growth](https://www.census.gov/newsroom/blogs/random-samplings/2011/03/population-distribution-and-change-2000-to-2010.html).

## Unsolved Homicides

The Washington Post collected data on more than 52,000 criminal homicides over the past decade in 50 of the largest American cities. I filtered out two local cities so we could take a closer look.
[Homicides in Oakland](https://app.workbenchdata.com/workflows/5840) ([csv](/j200/assets/mapping_exercise/oakland_homicide.csv) \ [Homicides in San Francisco](https://app.workbenchdata.com/workflows/5853/) ([csv](/j200/assets/mapping_exercise/sf_homicide.csv)) . We could map these in Datawrapper but we're going to get frustrated with their built in maps.

Question: Is this data points, lines, or shapes?

### Fusion Tables

1. Find the URL for the cleaned and filtered CSV in Workbench. Copy that.

1. Create a new spreadsheet. Populate it with the `=IMPORTDATA()` function. What does the help menu say about how to use `=IMPORTDATA()`?

2. Format the `reported_date` column so it reads as dates.

3. Create a new column and calculate the number of days the case has been open with  `=DAYS(TODAY(),D2)` -- stop and read what `=DAYS()` and `=TODAY()` do. What do they do?

4. 🤔 What is wrong with this picture? (Hint: it's in the `disposition` column.) Not all of these homicides are "unsolved". Keep this in mind as we keep working.

4. Create a new Fusion Table. Go to Google Drive and select *New > More > Google Fusion Tables* (you might have to connect Fusion Tables as an app).

5. Which column contains our location? We actually need a "two column location" which could be more intuitive than it is.

7. This data actually contains all homicides, open and closed. So let's play with a few ways to handle that.  
  * Filter out the solved homicides.
  * [Style the map by disposition](https://support.google.com/fusiontables/answer/2476954?hl=en&ref_topic=2575652) -- a process that should be easier than Google makes it.

9. Last step, *Tools > Publish*

Note: [New Media Report](https://newmedia.report/tutorials/google-maps/) includes a nice Google Map tutorial if you want to keep playing with Google Maps.

### Mapbox

Another excellent option if you're willing to learn (or cut and paste) some javascript is Mapbox Studio. Their order of operations is kind of nuanced and not obvious or intuitive if you're not familiar with some core principles of publishing maps on the internet. Their [sample workflow](https://www.mapbox.com/studio-manual/overview/#sample-workflow) is a good starting point, but it won't be 100% clear until you've spent some time working with their tools.

[Styles](https://www.mapbox.com/studio-manual/reference/styles/) are the visual rules that control how your map is drawn on the page. [Tilesets](https://www.mapbox.com/studio-manual/reference/tilesets/) are mapbox's primary data format. A tileset is a collection of images broken into a uniform grid of tiles, ready to load at various zoom levels. (If you've ever zoomed too fast on a Google Map you've seen tiles in action.) [Datasets](https://www.mapbox.com/studio-manual/reference/datasets/) are the editable feature collections that tilesets are built from. A dataset is your collection of lines, points, or shapes, with descriptive data attached.

0. Download the unsolved homicides CSV that you're interested in. Make sure you know where your computer stored it.
1. Make an account.
2. Head into [Mapbox Studio](https://www.mapbox.com/studio/) once you're logged in.
3. On the "Datasets" tab, click on "New dataset" -- upload your csv.

You can very quickly start looking at the data on a map. We can also go back to the Studio menu and start to work on making styles. Mapbox likes to start in Paris. If you aren't making a map of Paris search for a different city so you can center your map there.

Add a layer. Even though you already uploaded it, you want to select "upload" and then look for Create From Dataset.

We'll play with this together until we have points on a map. And you can embed that map and make it zoomable. To add any interactivity, however, you have to start with some of their javascript tutorials.
