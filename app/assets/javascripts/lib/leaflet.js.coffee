UsaAtlas.TileLayer = EmberLeaflet.TileLayer.extend
  tileUrl: "http://{s}.tile.stamen.com/toner-lite/{z}/{x}/{y}.png"
  options:
    attribution: "Map tiles by <a href='http://stamen.com'>Stamen Design</a>, <a href='http://creativecommons.org/licenses/by/3.0'>CC BY 3.0</a> &mdash; Map data &copy; <a href='http://openstreetmap.org'>OpenStreetMap</a> contributors, <a href='http://creativecommons.org/licenses/by-sa/2.0/'>CC-BY-SA</a>"

UsaAtlas.MarkerCollectionLayer = EmberLeaflet.MarkerCollectionLayer.extend
  contentBinding: 'controller'
