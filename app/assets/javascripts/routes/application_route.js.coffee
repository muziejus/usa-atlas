UsaAtlas.ApplicationRoute = Ember.Route.extend
#   setupController: (controller, books) ->
#     controller.set('model', books)
  model: ->
    @store.find "observation"
