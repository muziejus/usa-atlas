usa-atlas
=========

# Work on this repository has been suspended and replaced by a new project, [nyscapes/nywalker](http://github.com/nyscapes/nywalker)

This is a Literary Atlas of John Dos Passos’s work *U.S.A*. The idea is to have an application that allows for a full span of geostatistical (and other) investigation into Dos Passos’s work. To that end, the project is split into a handful of steps:

1. *[In Progress]* First, the **structure of the work has to be ported into an MVC** scheme. In *U.S.A.*’s case, this means breaking it apart into books, chapters, and even modes. Books have chapters, but not modes. Modes, however, also have chapters. And chapters have observations. Similarly, modes and books have observations. And *pages* have observations. Oh, and so do places. These sentences already suggest how the models relate to each other, so the key is to get the views (based on Bootstrap) and controllers to play along. In the meantime, did you know there are exactly 200 chapters in *U.S.A.*? Learning is fun!

2. *[In Progress]* Next comes the **dirty data entry**. This involves expanding a strictly GET-based Rails application into a more expansive one that allows me to do the data entry by hand. For each observation, I’ll record its place in the text (page, mode, etc.), the complete sentence in which the observation appears, the name of the place in the observation, whether the place is mentioned in dialog or in free indirect discourse, and a few other details. Once the 6000 (predicted) geographical observations are typed in, I can move to…

3. **Geocoding each place mentioned**. I know already that the sorts of places mentioned in the text move from buildings to continents and oceans, meaning that features will have to be represented differently depending on the level of detail. Each feature will get, then, a centroid coordinate pair as well as reference to a polygon/polyline, should those shape files later appear. But once at least every place in the text has a coordinate pair associated with it, I can offer the database as

4. **A RESTful service**. Hopefully, the resultant Rails app can be tweaked into a RESTful service that can talk to, ideally, ESRIesque mapping solutions, like GeoCommons or my University’s ArcGIS online. I’m not sure how possible that is, or how expensive it will get on my end, but we can see what develops, with the goal of ultimately having an application that

5. **Facilitates asking questions about how to read *U.S.A.* by encouraging new ones based on the geographical data.** Even with my epistemological concern regarding using GIS on a textual work, it might be worthwhile just to use this application as an opportunity to see what technologies exist, etc. Considering that this might then play a role in how I design my “The Map of the City that Is this Novel” course, maybe my epistemological concerns can wait a bit.

The Literary Atlas of *U.S.A.* by [Moacir P. de Sá Pereira](http://moacir.com) is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License](http://creativecommons.org/licenses/by-nc-sa/3.0/). To view a copy of this license, visit [http://creativecommons.org/licenses/by-nc-sa/3.0/](http://creativecommons.org/licenses/by-nc-sa/3.0/)
