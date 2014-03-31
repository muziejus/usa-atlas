# for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Chapter = DS.Model.extend
  book: DS.belongsTo 'book'
  mode: DS.belongsTo 'mode'
  firstPage: DS.attr 'number'
  lastPage: DS.attr 'number'
  name: DS.attr 'string'
  subhead: DS.attr 'string'
  observations: DS.hasMany 'observation', { async: true }
  profile: DS.attr 'profile'
  slug: (->
    return @get('id') + "-" + @get('name').toLowerCase().replace(/\W+/g, '-').replace(/^[-]+|[-]$/g, "")
  ).property('id', 'name')

UsaAtlas.ProfileTransform = DS.Transform.extend
  deserialize: (value) =>
    if value
      Ember.create
        historicalName: value.historical_name
        wikipediaUrl: value.wikipedia_url
