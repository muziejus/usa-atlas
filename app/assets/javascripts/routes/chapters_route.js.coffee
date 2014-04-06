UsaAtlas.ChaptersRoute = Ember.Route.extend
  model: ->
    UsaAtlas.CachedFindAll 'chapter', @store
#     @store.find 'chapter'
