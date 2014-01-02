# For more information see: http://emberjs.com/guides/routing/

UsaAtlas.Router.map ()->
  @resource 'observations', ->
    @resource 'observation', { path: ':observation_id' }
  @resource 'places', ->
    @resource 'place', { path: ':place_id' }
  @resource 'books', ->
    @resource 'book', { path: ':book_name' }
