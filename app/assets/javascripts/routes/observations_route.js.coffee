UsaAtlas.ObservationsRoute = Ember.Route.extend
  model: ->
    return @store.all 'observation'
  actions:
    loading: (transition, originRoute) ->
      displayLoadingSpinner()
      return true