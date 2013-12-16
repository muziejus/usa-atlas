usa-atlas
=========

This is a Literary Atlas of John Dos Passos’s work *U.S.A*. The idea is to have an application that allows for a full-breadth of geostatistical (and other) investigation into Dos Passos's work. To that end, the project is split into a handful of parts:

1. First is the **dirty data entry**. This will involve putting together a Rails application that lets me do the data entry by hand. For each observation, I'll record its place in the text (page, mode, etc.), the complete sentence in which the observation appears, the name of the place in the observation, and whether the place is mentioned in dialog or in free indirect discourse. Once the 6000 (predicted) geographical observations are typed in, I can move to…

2. **Geocoding each place mentioned**. I know already that the sorts of places mentioned in the text move from buildings to continents and oceans, meaning that features will have to be represented differently depending on the level of detail. Each feature will get, then, a centroid coordinate pair as well as reference to a poly(gon|line), should those shape files later appear. But once at least every place in the text has a coordinate pair associated with it, I can offer the database as

3. **A RESTful service**. Hopefully, the resultant rails app can be tweaked into a RESTful service that can talk to, ideally, ESRIesque mapping solutions, like GeoCommons or my University’s ArcGIS online. I’m not sure how possible that is, or how expensive it will get on my end, but we can see what develops, with the goal of ultimately having an application that

4. **Facillitates asking questions about how to read *U.S.A.* by encouraging new ones based on the geograpical data.** Even with my epistemological concern regarding using GIS on a textual work, it might be worthwhile just to use this application as an opportunity to see what technologies exist, etc. Considering that this might then play a role in how I design my “The Map of the City that Is this Novel” course, maybe my epistemological concerns can wait a bit.

The Literary Atlas of *U.S.A.* by [Moacir P. de Sá Pereira](http://moacir.com) is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-nc-sa/3.0/). To view a copy of this license, visit [http://creativecommons.org/licenses/by-nc-sa/3.0/](http://creativecommons.org/licenses/by-nc-sa/3.0/)