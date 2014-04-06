UsaAtlas.BooksRoute = Ember.Route.extend
  model: ->
    UsaAtlas.CachedFindAll 'book', @store
#     @store.find 'book'
