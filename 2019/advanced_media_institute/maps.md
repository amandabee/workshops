---
title     : Maps and Mapping
layout    : default
category  : advanced_media_institute
tagline   : Thursday, 24 October 2019 6-9PM
year      : 2019
tags      : [map, 2019]
toc       : true
---

# Welcome back

## Homework review
<https://etherpad.opennews.org/p/maps_and_charts>

## A few maps

[In New York, the Neighborhood You’re Shot in May Determine Whether You Survive](https://www.thetrace.org/2019/10/new-york-gun-violence-queens-trauma-centers/), *The Trace* 17 October 2019; Maya Miller's [twitter thread](https://twitter.com/mayatmiller/status/1184825745190916101) walks through their process in establishing the story.

[New Jersey's Map of the Stars](https://projects.nj.com/features/stars/) is a celebrity tour of the Garden State. *NJ.com* 9 October 2019

CalMatters mapped [School Closures](https://disasterdays.calmatters.org/california-school-closures) around the state.

[The Age That Women Have Babies: How a Gap Divides America](https://www.nytimes.com/interactive/2018/08/04/upshot/up-birth-age-gap.html), *New York Times* 4 August 2018.

*New York Times* went even deeper on the data we were playing with in March: they found and animated the spread over each year. They also mapped the average age for first time mothers for every county in the US, and broke first time mothers into a few categories:

![NYT map of first time mothers by US county]({{site.baseurl}}/2018/advanced_media_institute/nyt_maternal-age-county.png)

![NYT map of first time mothers by education and marriage]({{site.baseurl}}/2018/advanced_media_institute/nyt_maternal-age-mult.png)

# Why maps?

Maps are a powerful reporting tool, and they can be a powerful storytelling tool. We're just going to dabble at the edges today, but there are some great resources under "Keep learning" if you want to do more mapping.

[![Image: How Harvey Hurt Houston, in 10 Maps]({{site.baseurl}}/2019/j298/propublica_harvey.png)](https://projects.propublica.org/graphics/harvey-maps)
<sup><sub>ProPublica, Reveal and The Texas Tribune collaborated to map a series of stories about [Hurricane Harvey's impact in Houston](https://projects.propublica.org/graphics/harvey-maps).
Credit: Al Shaw and Lisa Song, *ProPublica*; Kiah Collier, *The Texas Tribune*; Neena Satija, *The Texas Tribune* and *Reveal*, January 3, 2018.</sub></sup>


We use maps to understand the data, to find a story, to tell a story. Some of my favorite examples:

Mago Torres and her colleagues spent over a year compiling data
on mass graves across Mexico while reporting on mass graves in Mexico. Their project [A dónde van los desaparecidos](https://adondevanlosdesaparecidos.org/) is available in English on The Intercept -- [2,000 Clandestine Graves: How a Decade of the Drug War Turned Mexico Into a Burial Ground](https://theintercept.com/2018/12/13/mexico-drug-war-mass-graves/).

ProPublica's [Guide to Every Permitted Natural Gas Well in West Virginia](https://projects.propublica.org/graphics/wva-well-pads) powerfully illustrates the impact of a massive expansion in horizontal well permits.

Capital Public Radio's [history of California wildfires](http://projects.capradio.org/california-fire-history/#6/38.58/-121.49) looks at a question that ought to be on everyone's mind after two years in a row of devastating fall wildfires. They wrote about [how they did it](https://source.opennews.org/articles/how-we-mapped-more-100-years-california-wildfire-h/) on [Source](https://source.opennews.org/). A few more fire maps:
* [KQED Property and Structures Damage](http://ww2.kqed.org/news/2017/10/19/map-cal-fire-maps-homes-damaged-or-destroyed-in-north-bay-fires/) was the most visited during the fires.
* [Fire hazard zones](https://ww2.kqed.org/science/2017/10/31/map-see-if-you-live-in-a-high-risk-fire-zone-and-what-that-means/) are public record -- as the 2017 fires cooled down, KQED pointed out that most of the devastating 2017 Napa and Sonoma fires were in "moderate" fire hazard zones.
* Peter Aldhous mapped [two decades of wildfires](https://www.buzzfeednews.com/article/peteraldhous/wildfire-risk-maps-search-your-home)

[Something in the water](https://signalhfx.ca/deadly-water/), King’s College School of Journalism (2017) started as a mapping exercise and grew from there.

National Geographic's [interactive map of bird migrations](https://www.nationalgeographic.com/magazine/2018/03/bird-migration-interactive-maps/) is stunning. They wrote about [how they built it](https://source.opennews.org/articles/how-we-made-billions-birds-migrate/), too.

FT mapped [broadband speeds in Britain](https://ig.ft.com/gb-broadband-speed-map/) and wrote about [how they built it](https://source.opennews.org/articles/how-we-made-our-broadband-map-using-mapbox/)

Sharon Lerner and Moiz Syed collaborated on a project looking at [drinking water contamination from firefighting foam](https://theintercept.com/2015/12/16/toxic-firefighting-foam-has-contaminated-u-s-drinking-water-with-pfcs/).

USA Today mapped [maternal mortality](https://www.usatoday.com/in-depth/news/investigations/deadly-deliveries/2019/03/07/maternal-death-rates-secret-hospital-safety-records-childbirth-deaths/2953224002/) across the US.

*The Seattle Times* put together a nice example of a Locator Map in their [reporting on Swedish Health](https://www.seattletimes.com/seattle-news/times-watchdog/swedish-healths-ambitious-seattle-plans-involved-a-developer-with-a-stake-their-success/).


## Core concepts

### Shapes, points, and lines

**Points**:
"Geocoding" refers to the process of identifying an individual latitude/longitude pair for an address or other location description. To actually plot a location on a map, you need the location's latitude and longitude. `906 Washington` means nothing without coordinates.

Geocoding is often challenging because there aren't great free resources for doing batch jobs or processing many addresses at once. The [Geocoding Tip Sheet](https://github.com/amandabee/workshops/wiki/Tip-Sheet:-Geocoding) is a round up of good options, but often public data sources already include coordinates.

**Lines**:
A line is a series of two or more points connected together -- you learned that in Geometry. Think bus routes and flight paths.

**Polygons**:
Counties, council districts, police precincts -- these are all polygons. But not zipcodes. [Zipcodes aren't shapes](https://github.com/iandees/wtf-zipcodes).


> Y'all. ZIP codes are not defined areas. Addresses have ZIP codes. The definition of a "ZIP code" is a list of addresses. And there are lots of different ways to take a bunch of points and turn them into a polygon. --[Lyzi "Bonecrusher" Diamond](https://twitter.com/lyzidiamond/status/1071627800967139328)

Geographic polygons are usually defined in one of two specialized file formats -- a "Shapefile" or a "KML" file. The syntax of the file types varies, but they contain basically the same information -- a series of lat/lon pairs that connect to form the shape.

If you have high school graduation rates by school district, and you want to map those, you need to find a shapefile that describes the outline of each school district, and then you need to combine that shapefile with your data, by identifying a column that the two tables have in common.

The [Shapefiles Tip Sheet](https://github.com/amandabee/workshops/wiki/Tip-Sheet:-Shapefiles) has some excellent resources for finding shapefiles.

## Datawrapper

This straightforward, if disturbing, BuzzFeed piece on a CDC report on [rising suicide rates nationwide](https://www.buzzfeed.com/carolinekee/suicide-rates-increase-us-2016-all-states) includes a map from the CDC. It isn't a terrible map, but there are a few ways it could be much better.

![CCD Suicide Data](/workshops/2018/advanced_media_institute/buzzfeed_cdc_map.jpeg)

Can you tell at a glance **which states stand out** as having the most severe increase?

Take a look at the legend. The sizes on those buckets are wild. The darkest has a 20 percentage pt spread, and the next has just a six percentage pt spread. These are quantiles: the CDC designed the buckets so that each would have ~12 states in it. And then they chipped off Nevada which is the only state that saw a decrease.

I should be able to explain why epidemiologists prefer quantiles to equal intervals, but I haven't dug in deep enough to be able to explain it. I did find what appears at a glance to be [a scientific paper](https://bmcmedresmethodol.biomedcentral.com/articles/10.1186/1471-2288-12-21) arguing against the practice.


BuzzFeed News helpfully links to the original report -- the raw data is available [from the CDC](https://www.cdc.gov/vitalsigns/suicide/infographic.html#graphic1) in the [Morbidity and Mortality Weekly Report](https://www.cdc.gov/mmwr/index.html).

» *Question:* is this data organized into points, lines or shapes?

To avoid hiccups in the copy and paste process, I went ahead and pulled the numbers for you. <https://app.workbenchdata.com/workflows/5852>

Workbench bills itself as a "data journalism platform" which seems a bit excessive, but it is a great way to share data, especially if you did some work to transform it from its source.

**Step 0:** Log into Datawrapper and choose "Create a map". We want a choropleth. Fun thing I finally looked up: "choropleth" comes from the Greek words `chóros` (area or region) and `plíthos` (multitude).

![create a map](/workshops/2018/advanced_media_institute/mapping_datawrapper.png)

**Step 1:** Search for "USA States" under "What type of map do you want to create?".

Question that came up last time I taught mapping with Datawrapper: *Why is the electoral college hex map different from the population hex map?* It turns out there are a few reasons. First, the census updates population estimates more often than the electoral college is redesigned. Second, the actual electors aren't based entirely on population. Each state gets one Elector for each senator (2) and one for each congress person (varies, maps are redrawn every 10 years). DC always gets 3 Electors (or, no more than the least populous state). 🏅 if you already knew that.

**Step 3:** Download your data from Workbench and add it to Datawrapper.

» *Question:* do we have ISO-Codes or Names in our data?

Once you've uploaded your data, read through the next screen, too.As you step through these dialog windows, they should make sense.

![pay attention](/workshops/2018/advanced_media_institute/mapping_exercise_columns.png)

You've already got a much cleaner map. And a single state that really stands out.
The Washington Post [wrote more about why suicides](https://www.washingtonpost.com/news/to-your-health/wp/2018/06/07/u-s-suicide-rates-rise-sharply-across-the-country-new-report-shows/) have risen so much. They note how much ND stands out, but they don't have an explanation either.

**Step 4:** Customize your gradient and your tooltips. The average nationwide was a 25.4% increase. You could reasonably center your buckets there. Or you can keep the default gradient. Add tooltips.

{% raw %}
`{{ Increase_Decrease }} of {{ Overall_Percent_Change }}%`
{% endraw %}

Play with the colors. [ProPublica recommends](https://github.com/propublica/guides/blob/master/news-apps.md#colors) [ColorOracle](http://colororacle.org/) to find web safe colors and test for color blindness. ColorOracle takes some setup so for now use [Color Brewer](http://colorbrewer2.org/).

**Step 5:** Add a title and description. Fill in the rest of the metadata.

» *Title:* What is the takeaway here? In the BuzzFeed story, they captioned this "Suicide rates increased in almost all states between 1999 and 2016 — some by more than 30%.", but the chart uses "Figure. Percent change in annual suicide rate,* by state-- United States , from 1999/2001 to 2014/2016" -- in reporting and story telling, your chart title should tell readers what they're looking for in the chart.

» *Caption:* Tell your readers more about what we're looking at. "A recent CDC report found that there is just one state in the union -- Nevada -- where suicides did  not rise between 1999 and 2016."

**Step 6:** Embed it!

Question: -- *If these rates are both based on the 2000 population, how much does this map just reflect population growth?* It's a good question. According to the Census [Nevada was the US state with the the highest growth](https://www.census.gov/newsroom/blogs/random-samplings/2011/03/population-distribution-and-change-2000-to-2010.html) between 2000 and 2010, but suicides there dropped.

## Another map

The Washington Post collected data on more than 52,000 criminal homicides over the past decade in 50 of the largest American cities. I filtered out two local cities so we could take a closer look.
[Homicides in Oakland](https://app.workbenchdata.com/workflows/5840) \ [Homicides in San Francisco](https://app.workbenchdata.com/workflows/5853/). We could map these in Datawrapper but we're going to get frustrated with their built in maps.

Question: Is this data points, lines, or shapes?


**Step 1:** Find the URL for the cleaned and filtered CSV in Workbench. Copy that.

**Step 2:** Create a new spreadsheet. Populate it with the `=IMPORTDATA()` function. What does the help menu say about how to use `=IMPORTDATA()`?

**Step 3:** Format the `reported_date` column so it reads as dates. We have to do this in our spreadsheet before we get to Fusion Tables.

**Step 4:** Create a new column and calculate the number of days the case has been open with  `=DAYS(TODAY(),D2)` -- stop and read what `=DAYS()` and `=TODAY()` do. What do they do?

**Step 5:** 🤔 What is wrong with this picture? (Hint: it's in the `disposition` column.) Not all of these homicides are "unsolved". So we're going to filter out only the open cases and apply our "days open" function to them.

**Step 6:** Create a new Fusion Table. Go to Google Drive and select *New > More > Google Fusion Tables* (you might have to connect Fusion Tables as an app).

**Step 7:** Which column contains our location? We actually need a "two column location" which could be more intuitive than it is.

**Step 8:** This data contains all homicides, open and closed. So let's play with a few ways to handle that.  
  * Filter out the solved homicides.
  * [Style the map by disposition](https://support.google.com/fusiontables/answer/2476954?hl=en&ref_topic=2575652) -- a process that should be easier than Google makes it.  

  *a.* Make a new table with *File > New Table*  
  *b.* We can use `=UNIQUE(Sheet1!L2:L947)` to get the exact values we need.  
  *c.* Fusion Tables actually recognizes [200 different map markers](https://fusiontables.google.com/data?docid=1BDnT5U1Spyaes0Nj3DXciJKa_tuu7CzNRXWdVA#map:id=3) but we're going to stick with `small_red` and `small_green`.  
  *d.* Create a new Fusion Table from your spreadsheet tab.  
  *e.* Head back to your original map of homicides and use *File > Find Table to Merge With* to merge them.  
  *f.* On your map, look at "Change feature styles..." and find the "Column" tab.

  I wound up with a table that looks like this:

| Disposition      | icon name   |
|------------------|-------------|
| Closed by arrest | small_green |
| Open/No arrest   | small_red   |



**Step 9:** Last step, *Tools > Publish*


## Mapping polygons in fusion tables

Fusion Tables makes it a little harder to merge data into a boundary file, but they do maintain a good collection of boundary files. We can select the US States data from their [boundary files](https://support.google.com/fusiontables/answer/1182141?hl=en) and merge it with our CDC data.

We're going to have to walk through a few steps:

**Step 1:** Upload the csv of CDC data directly to a new fusion table.

**Step 2:** Open the [USA State Boundaries](https://support.google.com/fusiontables/answer/1182141?hl=en) shape file.

**Step 3:** Use "Find table to merge with" to find your CDC table.

**Step 4:** Merge -- remember we need to make sure we've got an apples to apples merge.


## Mapbox

Another excellent option if you're willing to learn (or cut and paste) some javascript is Mapbox Studio. Their order of operations is kind of nuanced and not obvious or intuitive if you're not familiar with some core principles of publishing maps on the internet. Their [sample workflow](https://www.mapbox.com/studio-manual/overview/#sample-workflow) is a good starting point, but it won't be 100% clear until you've spent some time working with their tools.

[Styles](https://www.mapbox.com/studio-manual/reference/styles/) are the visual rules that control how your map is drawn on the page. [Tilesets](https://www.mapbox.com/studio-manual/reference/tilesets/) are mapbox's primary data format. A tileset is a collection of images broken into a uniform grid of tiles, ready to load at various zoom levels. (If you've ever zoomed too fast on a Google Map you've seen tiles in action.) [Datasets](https://www.mapbox.com/studio-manual/reference/datasets/) are the editable feature collections that tilesets are built from. A dataset is your collection of lines, points, or shapes, with descriptive data attached.

0. Download the unsolved homicides CSV that you're interested in. Make sure you know where your computer stored it.
1. Make an account.
2. Head into [Mapbox Studio](https://www.mapbox.com/studio/) once you're logged in.
3. On the "Datasets" tab, click on "New dataset" -- upload your csv.

You can very quickly start looking at the data on a map. We can also go back to the Studio menu and start to work on making styles. Mapbox likes to start in Paris. If you aren't making a map of Paris search for a different city so you can center your map there.

Add a layer. Even though you already uploaded it, you want to select "upload" and then look for Create From Dataset.

We'll play with this together until we have points on a map. And you can embed that map and make it zoomable. To add any interactivity, however, you have to start with some of their javascript tutorials.


# Homework
*optional*: If you plan to include a map in your portfolio project, send me a pitch by next week -- let me know what data you plan to map, where you found it and how you think it moves your story forward. If I get a thoughtful pitch by April 10, I'll work with you to get your map into shape.

## Stay in touch
I’m amanda@velociraptor.info if you have any questions or want guidance or advice.

## Keep learning

* Source's guide to [Better Mapping](https://source.opennews.org/guides/better-mapping/) is a fantastic round up of articles.

* **[Mapbox](https://www.mapbox.com/)** is powerful, but not nearly as cut and paste as Datawrapper. Lo Benichou has written some fantastic [Mapbox tutorials](https://www.mapbox.com/help/tutorials/).

* **QGIS** plays nicely with **PostGIS** and in combination the two can be a powerful geographic analytical tool. QGIS doesn't output interactive maps but you can run much more complex queries like [measuring distance](https://postgis.net/docs/ST_Distance.html) or identifying all the [points inside](https://postgis.net/docs/ST_Within.html) of a given shape. QGIS will generate SVG files that you can style in a vector graphics editor (eg. Inkscape, Illustrator) for publication. This is what I use.

* These [Dutch election maps](https://multimedia.tijd.be/2018/verkiezingen2018/) were made in **ggplot2** (an **R** package), working from [a comprehensive tutorial tutorial](https://timogrossenbacher.ch/2016/12/beautiful-thematic-maps-with-ggplot2-only/#more-intuitive-legend). You can definitely do powerful geographic analysis inside of R.

* Andrew B Tran publishes his NICAR workshops on Github including his session on [Mapping with R](https://github.com/andrewbtran/NICAR/tree/master/2019)

* You can create interactive maps in **D3**. Mike Bostock has a [solid tutorial](https://medium.com/@mbostock/command-line-cartography-part-1-897aa8f8ca2c) available.
