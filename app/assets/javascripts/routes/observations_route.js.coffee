UsaAtlas.ObservationsRoute = Ember.Route.extend
  model: ->
    UsaAtlas.CachedFindAll 'observation', @store
#     @store.find 'observation'
#   actions:
#     loading: (transition, originRoute) ->
#       displayLoadingSpinner()
#       return true
