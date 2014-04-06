UsaAtlas.ChapterRoute = Ember.Route.extend
  model: (params)->
    @store.find 'chapter', params.chapter_id
  setupController: (controller, model) ->
    controller.set('content', model)
    controller.set('chapter', UsaAtlas.CachedFindAll 'chapter', @store)
