---
title     : Mapping
layout    : post
category  : thursday
tagline   : A basic introduction to making maps.
tags      : [maps]
author    : Amanda Hickman
---


If you don't already have a [Datawrapper](https://www.datawrapper.de/) account, create one.

# Why Map?

We use maps to understand the data, to find a story, to tell a story. Some of my favorite examples:

* [The Age That Women Have Babies: How a Gap Divides America](https://www.nytimes.com/interactive/2018/08/04/upshot/up-birth-age-gap.html), *New York Times* 4 August 2018.
* [The Expanding News Desert](http://www.usnewsdeserts.com/), UNC (2018)
* [How we mapped Homan Square](https://source.opennews.org/articles/how-we-made-homan-square-portrait/), Source + The Guardian  (2018)
* [Something in the water](https://signalhfx.ca/deadly-water/), King’s College School of Journalism (2017)
* [Visualize Transit-Rich Housing](https://transitrichhousing.org/), Sasha Aickin's personal project (Spring 2018)
* [Murder with Impunity](https://www.washingtonpost.com/graphics/2018/investigations/unsolved-homicide-database/?utm_term=.e4a4e1dd6d60), Washington Post (2018)
* [Fatal Force](https://www.washingtonpost.com/graphics/national/police-shootings-2016), Washingon Post (2016)
* [How fast is LAFD where you live?](http://graphics.latimes.com/how-fast-is-lafd/#10/33.9661/-118.6201), LA Times (2012)
* [Poisoned Place](https://www.npr.org/series/142000896/poisoned-places-toxic-air-neglected-communities), NPR (2011) / [map](https://www.npr.org/news/graphics/2011/10/toxic-air/#4.00/39.00/-84.00) / [about the data](https://www.npr.org/2011/11/07/142024951/poisoned-places-about-the-data) /
* [At Risk in a Big Quake: 39 of San Francisco’s Top High Rises](https://www.nytimes.com/2018/06/14/us/california-earthquakes-high-rises.html), New York Times (2018)
* San Francisco Public Press layered the map of un-retrofitted soft story buildings over the liquefaction map provided by the USGS to create a [very rough list of unsafe buildings](https://sfpublicpress.org/softstorylist) in San Francisco.
*  [Mapping the Shoreline Building Boom as Seas Rise](https://sfpublicpress.org/news/searise/2017-04/mapping-the-shoreline-building-boom-as-seas-rise), San Francisco Public Press (2017)
* [ProPublica &amp; The Lens: Losing Ground](http://projects.propublica.org/louisiana/), ProPublica (2017)
* [Borderlands](http://apps.npr.org/borderland/#_/about), NPR (2014)
* CALmatters mapped [all the housing initiatives on the June 2018 ballot](https://calmatters.org/articles/map-how-we-voted-on-housing-issues-up-and-down-the-state/)¸CALmatters (2018)
* [A quick caveat about normalization.](https://xkcd.com/1138/)

### North Bay Fires (2017)
* [KQED Property and Structures Damage](http://ww2.kqed.org/news/2017/10/19/map-cal-fire-maps-homes-damaged-or-destroyed-in-north-bay-fires/) was the most visited during the fires.
* [KQED](https://ww2.kqed.org/science/2017/10/31/map-see-if-you-live-in-a-high-risk-fire-zone-and-what-that-means/) looks at fire hazard zones, which are public record. Most of the devastating 2017 Napa and Sonomoa fires were in "moderate" fire hazard zones.


## Projections, Shapes, Points, and Lines

[![Projections, too](https://imgs.xkcd.com/comics/map_projections.png)](https://xkcd.com/977/)

### Mapping Points
"Geocoding" refers to the process of identifying an individual latitude/longitude pair for an address or other location description. To actually plot a location on a map, you need the location's latitude and longitude. `219 West 40th Street` means nothing without coordinates.

Geocoding is often challenging because there aren't great free resources for doing batch jobs or processing many addresses at once. The [Geocoding Tip Sheet](https://github.com/amandabee/cunyjdata/wiki/Tip-Sheet:-Geocoding) is a round up of good options, but often public data sources already include coordinates.

### Mapping Lines
We use lines pretty rarely in intro maps, but a line is  a series of two or more points connected together.

### Mapping Polygons
Zipcodes, council districts, police precincts -- these are all polygons. Most of your maps will be in polygons. These polygons are defined in (usually) one of two specialized file formats -- a "Shapefile" or a "KML" file. The syntax of the file types varies, but they contain basically the same information -- the polygon called "Bronx CB 04" is defined by this series of lat/lon pairs.

Usually your data won't include a shapefile. If you have high school graduation rates by school district, and you want to map those, you need to find a shapefile that describes the outline of each school district, and then you need to combine that shapefile with your data, by identifying a column that the two tables have in common.

The [Shapefiles Tip Sheet](https://github.com/amandabee/cunyjdata/wiki/Where-to-Find-Shapefiles) has some excellent resources for finding shapefiles.

# Making a Map

We're going to [make our first map in Datawrapper](https://ucb-dataj.github.io/j200/hands-on/mapping_activity.html) and if that's easy we'll power through to Mapbox.

# More Resources

## Other good software options

* We use **QGIS** and **PostGIS** in the data investigations class because it is much more powerful analytical tool. The learning curve is a bit steep, however, and QGIS doesn't produce  interactive maps. QGIS will generate SVG files that you can style in Illustrator or any other vector graphics editor for publication.
* **R** is powerful statistical software and not easy to learn. These [Dutch election maps](https://multimedia.tijd.be/2018/verkiezingen2018/) were made in ggplot2 (an R package) -- working from [a comprehensive tutorial tutorial](https://timogrossenbacher.ch/2016/12/beautiful-thematic-maps-with-ggplot2-only/#more-intuitive-legend). Like QGIS, R will generate SVG files that you can style in Adobe Illustrator or any other vector graphics editor.
* You can make maps in **D3**, but not without getting code on your hands. [Mike Bostock has a solid tutorial](https://medium.com/@mbostock/command-line-cartography-part-1-897aa8f8ca2c)
* For years, I taught students how to use **[Carto](https://carto.com/)** because it is easy to master and flexible. Unfortunately, they no longer offer a free tier to anyone but students, which means that if you're just publishing your first one or two maps, you have to commit to a paid account. They don't even publish the pricing for those accounts anymore. Sad trombone.
* **Tableau** generates good maps. Peter Aldhous has a nice [Tableau walkthrough](http://paldhous.github.io/ucb/2016/intro-data/week4.html) from 2016. Unfortunately, I've never met a graphics editor who didn't have some kind of tableau horror story.
* **[Mapbox](https://www.mapbox.com/)** is powerful if you're game to learn some javascript (or just to cut and paste). Lo Benichou has written some fantastic [Mapbox tutorials](https://www.mapbox.com/help/tutorials/). And if you don't want or need interactivity, Mapbox Studio will let you design gorgeous map tiles, no javascript needed.

## Other good tutorial options
* [Dan Nguyen has a nice roundup](http://www.padjo.org/tutorials/#mapping) of his tutorials.
