UsaAtlas.ChapterRoute = Ember.Route.extend
  model: (params)->
    return @store.find 'chapter', params.chapter_id
  setupController: (controller, model) ->
    controller.set('content', model)
    controller.set('chapter', @store.all 'chapter')