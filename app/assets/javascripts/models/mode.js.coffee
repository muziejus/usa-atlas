# for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Mode = DS.Model.extend
  chapters: DS.hasMany 'chapter', { async: true }
  observations: DS.hasMany 'observation', { async: true }
  name: DS.attr 'string'
  
