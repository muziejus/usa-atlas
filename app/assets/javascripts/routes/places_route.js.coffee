UsaAtlas.PlacesRoute = Ember.Route.extend
  model: ->
    UsaAtlas.CachedFindAll 'place', @store
#     @store.find 'place'
