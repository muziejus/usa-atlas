UsaAtlas.PlacesRoute = Ember.Route.extend
  model: ->
    return @store.findAll 'place'
    