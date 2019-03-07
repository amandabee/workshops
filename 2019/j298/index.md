---
title     : Some Maps, Some CSVkit
layout    : default
category  : ucb
tagline   : Friday, 8 March 2019 1-4PM
year      : 2019
tags      : [map, csvkit, 2019]
toc       : true
---

# First a Map

Maps are a powerful reporting tool, and they can be a powerful storytelling tool. We're just going to dabble at the edges today, but there are some great resources under "Where to keep learning" if you want to do more mapping.

## Core Concepts

### Shapes, Points, and Lines

#### Mapping Points
"Geocoding" refers to the process of identifying an individual latitude/longitude pair for an address or other location description. To actually plot a location on a map, you need the location's latitude and longitude. `219 West 40th Street` means nothing without coordinates.

Geocoding is often challenging because there aren't great free resources for doing batch jobs or processing many addresses at once. The [Geocoding Tip Sheet](https://github.com/amandabee/workshops/wiki/Tip-Sheet:-Geocoding) is a round up of good options, but often public data sources already include coordinates.

### Mapping Lines
We use lines pretty rarely in intro maps, but a line is  a series of two or more points connected together.

### Mapping Polygons
Counties, council districts, police precincts -- these are all polygons. But not zipcodes. [Zipcodes aren't shapes](https://github.com/iandees/wtf-zipcodes).
[Lyzi "Bonecrusher" Diamond@lyzidiamond](https://twitter.com/lyzidiamond/status/1071627800967139328)
> Y'all. ZIP codes are not defined areas. Addresses have ZIP codes. The definition of a "ZIP code" is a list of addresses. And there are lots of different ways to take a bunch of points and turn them into a polygon.

Geographic polygons are usually defined in one of two specialized file formats -- a "Shapefile" or a "KML" file. The syntax of the file types varies, but they contain basically the same information -- a series of lat/lon pairs that connect to form the shape.

If you have high school graduation rates by school district, and you want to map those, you need to find a shapefile that describes the outline of each school district, and then you need to combine that shapefile with your data, by identifying a column that the two tables have in common.

The [Shapefiles Tip Sheet](https://github.com/amandabee/workshops/wiki/Tip-Sheet:-Shapefiles) has some excellent resources for finding shapefiles.

## Making a map in Datawrapper

This is a pretty straightforward, if disturbing, CDC report on [rising suicide rates nationwide](https://www.buzzfeed.com/carolinekee/suicide-rates-increase-us-2016-all-states). The map included came directly from the CDC. It isn't a terrible map, but there are a few ways it could be much better. Can you tell at a glance **which states stand out** as having the most severe increase?

Take a look at the legend. The sizes on those buckets are wild. The darkest has a 20 percentage pt spread, and the next has just a six percentage pt spread. These are quantiles: the CDC designed the buckets so that each would have 12 states in it. And then they chipped off Nevada which is the only state that saw a decrease.


![CCD Suicide Data](buzzfeed_cdc_map.jpeg)

Luckily, BuzzFeed News actually links to the original report -- the raw data is available in the CDC's [original report](https://www.cdc.gov/vitalsigns/suicide/infographic.html#graphic1) which appeared in the [Morbidity and Mortality Weekly Report](https://www.cdc.gov/mmwr/index.html). To avoid hiccups in the copy and paste process, I went ahead and pulled the numbers for you. Question: is this data organized into points, lines or shapes?

<https://app.workbenchdata.com/workflows/5852>

Workbench is still a work in progress but one thing it does well is show the transformations I applied to the original data.

**Step 0:** Download the csv from Workbench.

**Step 1:** Log into Datawrapper and choose "Create a map". We want a choropleth.

![create a map](mapping_datawrapper.png)

**Step 2:** (Datawrapper thinks of this as Step 1), search for "USA States" under "What type of map do you want to create?".

Fun question that came up Week 1, that I couldn't answer off the top of my head: *Why is the electoral college hex map different from the population map?* It turns out there are a few reasons. First, as I noted, the census updates population estimates more often than the electoral college is redesigned. Second, the actual electors aren't based entirely on population. Each state gets one Elector for each senator (2) and one for each congress person (varies, maps are redrawn every 10 years). DC always gets 3 Electors (or, no more than the least populous state).

The Washington Post did some deeper reporting asking why North Dakota stands out so much.  [It's worth reading if you're interested in that question.](https://www.washingtonpost.com/news/to-your-health/wp/2018/06/07/u-s-suicide-rates-rise-sharply-across-the-country-new-report-shows/)

**Step 3:** Import your dataset. But get in the habit of reading pop up windows. Do we have ISO-Codes or Names here?

Once you've uploaded your data, read through the next screen, too.

![pay attention](mapping_exercise_columns.png)

As you step through these dialog windows, they should make sense!

You've already got a much cleaner map. But we're going to hit `Proceed` and make it better.

**Step 4:** Customize your gradient and your tooltips. The average nationwide was a 25.4% increase. You could reasonably center your buckets there. Or you can keep the default gradient. And make some tooltips.

```
{{ Increase_Decrease }} of {{ Overall_Percent_Change }}%
```

Play with the colors. [ProPublica recommends](https://github.com/propublica/guides/blob/master/news-apps.md#colors) [ColorOracle](http://colororacle.org/) to find safe colors and test for color blindness. It takes some setup so for now we're going to use [Color Brewer](http://colorbrewer2.org/) becasue it's fast.    

**Step 5:** Add your title and description. Never skip the metadata.

**Title:** What is the takeaway here? In the story, they captioned this "Suicide rates increased in almost all states between 1999 and 2016 — some by more than 30%.", but the chart uses "Figure. Percent change in annual suicide rate,* by state-- United States , from 1999/2001 to 2014/2016"

**Caption:** Tell your readers more about what we're looking at. "A recent CDC report found that there is just one state in the union -- Nevada -- where suicides did  not rise between 1999 and 2016."

**Step 6:** Embed it!

Fun Question that came up Week 3 -- *If these rates are both based on the 2000 population, how much does this map just reflect population growth?* One answer, from the Census, is that between 2000 and 2010 [Nevada was the US state with the the highest growth](https://www.census.gov/newsroom/blogs/random-samplings/2011/03/population-distribution-and-change-2000-to-2010.html).



## A few maps I like

Pull from notes

### Maps as navigation

### Maps as storytelling

### Maps that never see print

## Where to keep learning

* Source's guide to [Better Mapping](https://source.opennews.org/guides/better-mapping/) is a fantastic round up of articles.

* **[Mapbox](https://www.mapbox.com/)** is powerful, but not nearly as cut and paste as Datawrapper. Lo Benichou has written some fantastic [Mapbox tutorials](https://www.mapbox.com/help/tutorials/).

* **QGIS** plays nicely with **PostGIS** and in combination the two can be a powerful geographic analytical tool. QGIS doesn't output interactive maps but you can run much more complex queries like [measuring distance](https://postgis.net/docs/ST_Distance.html) or identifying all the [points inside](https://postgis.net/docs/ST_Within.html) of a given shape. QGIS will generate SVG files that you can style in a vector graphics editor (eg. Inkscape, Illustrator) for publication. This is what I use.

* These [Dutch election maps](https://multimedia.tijd.be/2018/verkiezingen2018/) were made in **ggplot2** (an **R** package), working from [a comprehensive tutorial tutorial](https://timogrossenbacher.ch/2016/12/beautiful-thematic-maps-with-ggplot2-only/#more-intuitive-legend). You can definitely do powerful geographic analysis inside of R.

* You can create interactive maps in **D3**. Mike Bostock has a [solid tutorial](https://medium.com/@mbostock/command-line-cartography-part-1-897aa8f8ca2c) available.


# Break: 2:30 - 2:40 PM

![Break Time](/assets/imgs/break.gif)

# On to the command line
