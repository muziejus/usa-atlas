UsaAtlas.Book = DS.Model.extend
  chapters: DS.hasMany 'chapter', { async: true }
  firstPage: DS.attr 'number'
  lastPage: DS.attr 'number'
  name: DS.attr 'string'
  slug: (->
    return @get('id') + "-" + @get('name').toLowerCase().replace(/\W+/g, '-').replace(/^[-]+|[-]$/g, "")
  ).property('id', 'name')
