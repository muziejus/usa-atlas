UsaAtlas.ObservationsRoute = Ember.Route.extend
  model: ->
    return @store.findAll 'observation'
  actions:
    loading: (transition, originRoute) ->
      displayLoadingSpinner()
      return true