UsaAtlas.BookChaptersRoute = Ember.Route.extend
  model: ->
    return @store.findAll 'chapter'
    