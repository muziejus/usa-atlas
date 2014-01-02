# for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Place = DS.Model.extend
  observation: DS.hasMany 'observation'
  name: DS.attr 'string'
  variants: DS.attr 'string'
  geocodingNotes: DS.attr 'string'
  latitude: DS.attr 'number'
  longitude: DS.attr 'number'