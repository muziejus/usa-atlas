UsaAtlas.PlaceObservationRoute = Ember.Route.extend
  model: (params)->
    @store.find 'observation', params.observation_id
