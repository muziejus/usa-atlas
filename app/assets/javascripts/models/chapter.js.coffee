# for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Chapter = DS.Model.extend
  book: DS.belongsTo 'book'
  mode: DS.belongsTo 'mode'
  firstPage: DS.attr 'number'
  lastPage: DS.attr 'number'
  name: DS.attr 'string'
  subhead: DS.attr 'string'
  observations: DS.hasMany 'observation', { async: true }
  slug: (->
    return @get('id') + "-" + @get('name').toLowerCase().replace(/\W+/g, '-').replace(/^[-]+|[-]$/g, "")
  ).property('id', 'name')