UsaAtlas.ObservationsRoute = Ember.Route.extend
  model: ->
    return @store.findAll 'observation'
    