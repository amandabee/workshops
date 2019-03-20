
## Sorted




## Discussion: do these charts work? Do you want more?

### For a future lesson plan?

[TRAC looks at ICE detention](https://trac.syr.edu/immigration/reports/530/) -- most people detained by ICE haven't been convicted of a crime, and when they have been convicted it was often a relatively minor crime.

CalMatters ran a commentary arguing that the [corporation tax shouldn't be increased](https://calmatters.org/articles/commentary/california-corporate-tax/). His chart was interesting to me because it didn't provide any context.

» *Question:* What context is missing here?

We could adjust for inflation, or compare to the state economy as a whole.

I wanted to track down the data itself, so I looked at his sources. [NBER publishes data on recessions](https://www.nber.org/cycles/cyclesmain.html).

### Maps

Datawrapper will let you use anything for a basemap, but it has to be in TopoJSON or GeoJSON format, and meet [a few other requirements](https://academy.datawrapper.de/article/145-how-to-upload-your-own-map).

TIGER from https://data.ca.gov/dataset/ca-geographic-boundaries

Actually used:
Better map, clipped to shoreline https://geodata.lib.berkeley.edu/catalog/ark28722-s7hs4j

Place maps https://geodata.lib.berkeley.edu/catalog/ark28722-s7bp4z



Mapshaper Commands:

`proj wgs84` (for each layer)
with california_place_clipped selected, do `clip bayarea_county` to drop all the places outside of bay area counties.

Not sure I can

Could do:
`filter '"Marin, Contra Costa, Alameda, San Francisco, Santa Clara, San Mateo".indexOf(COUNTY) > -1' `
