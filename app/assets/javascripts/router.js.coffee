# For more information see: http://emberjs.com/guides/routing/

UsaAtlas.Router.map ()->
  @resource 'observations'
  @resource 'observation', { path: '/observation/:observation_id' }
  @resource 'places'
  @resource 'place', { path: '/place/:slug' }, ->
    @resource 'placeObservation', {path: 'observation/:observation_id'}
  @resource 'books'
  @resource 'book', { path: '/book/:slug' }, ->
    @resource 'bookChapters', { path: 'chapters'}
    @resource 'bookChapter', { path: 'chapter/:slug' }
  @resource 'chapters'
  @resource 'chapter', { path: '/chapter/:slug' }, ->
#       @resource 'chapterObservations', { path: 'observations' }
      @resource 'chapterObservation', { path: 'observation/:observation_id' }

