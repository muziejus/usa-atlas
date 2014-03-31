UsaAtlas.ChaptersRoute = Ember.Route.extend
  model: ->
#     return @store.all 'chapter'
    return @store.find 'chapter'
