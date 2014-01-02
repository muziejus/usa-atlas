// for more details see: http://emberjs.com/guides/models/defining-models/

UsaAtlas.Observation = DS.Model.extend({
  place: DS.belongsTo('place'),
  text: DS.attr('string'),
  placeNameInText: DS.attr('string'),
//  dialogue: DS.attr('boolean'),
//  adjective: DS.attr('boolean'),
//  notAPlace: DS.attr('boolean'),
  placeId: DS.attr('number'),
//  pageId: DS.attr('number'),
//  modeId: DS.attr('number'),
//  chapterId: DS.attr('number'),
//  orderInPage: DS.attr('number'),
  placeData: function() {
    return this.store.find('place', this.get('placeId'));
  }.property('placeId')
});