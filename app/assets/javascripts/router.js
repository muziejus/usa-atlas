// For more information see: http://emberjs.com/guides/routing/

UsaAtlas.Router.map(function() {
  this.resource('observations', function() {
    this.resource('observation', { path: ':observation_id' });
  });
  this.resource('places', function() {
    this.resource('place', { path: ':place_id'});
  });
});
