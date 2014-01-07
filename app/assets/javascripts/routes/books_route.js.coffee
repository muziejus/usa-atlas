UsaAtlas.BooksRoute = Ember.Route.extend
  model: ->
    return @store.findAll 'book'
#   setupController: (controller, books) ->
#     controller.set('model', books)
    