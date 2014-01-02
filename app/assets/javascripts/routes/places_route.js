UsaAtlas.PlacesRoute = Ember.Route.extend({
  model: function() {
    return this.store.findAll('place');
  }
});