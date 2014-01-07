# for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Book = DS.Model.extend
  chapters: DS.hasMany 'chapter', { async: true }
  firstPage: DS.attr 'number'
  lastPage: DS.attr 'number'
  name: DS.attr 'string'
  slug: (->
    return @get('id') + "-" + @get('name').toLowerCase().replace(/\W+/g, '-').replace(/^[-]+|[-]$/g, "")
  ).property('id', 'name')
  
# UsaAtlas.Book.FIXTURES = [
#   {
#     id: "1"
#     name: "usa"
#     firstPage: "3"
#     lastPage: "15"
#   }
#   {
#     id: "2"
#     name: "42par"
#     firstPage: "16"
#     lastPage: "17"
#   }
# ]