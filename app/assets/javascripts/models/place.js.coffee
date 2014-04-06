# for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Place = DS.Model.extend
  observation: DS.hasMany 'observation', { async: true }
  name: DS.attr 'string'
  variants: DS.attr 'string'
  geocodingNotes: DS.attr 'string'
  latitude: DS.attr 'number'
  longitude: DS.attr 'number'
  slug: (->
    return @get('name').toLowerCase().replace(/\W+/g, '-').replace(/^[-]+|[-]$/g, "")
  ).property('name')
