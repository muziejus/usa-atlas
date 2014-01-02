UsaAtlas.ObservationsRoute = Ember.Route.extend({
  model: function() {
    return this.store.findAll('observation');
  }
});