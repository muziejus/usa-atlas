UsaAtlas.ChapterObservationRoute = Ember.Route.extend
  model: (params)->
    return @store.find 'observation', params.observation_id
#   renderTemplate: ->
#     @render 'observation'
#     