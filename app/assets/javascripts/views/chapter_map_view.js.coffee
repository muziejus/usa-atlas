UsaAtlas.ChapterMapView = EmberLeaflet.MapView.extend
  childLayers: [
    UsaAtlas.TileLayer,
    UsaAtlas.MarkerCollectionLayer
    ]
#   center: L.latLng(@get('model.place.latitude'), @get('model.place.longitude')).property('model.place.latitude', 'model.place.longitude')
#   center: L.latLng(29.966667,-90.05)
