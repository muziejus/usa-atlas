UsaAtlas.ChaptersRoute = Ember.Route.extend
  model: ->
    return @store.findAll 'chapter'
    