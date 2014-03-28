Ember.Handlebars.helper 'highlightPlaceIn', (text, placeNameInText) ->
  higlightedText = text.replace(placeNameInText, "<b>" + placeNameInText + "</b>")
  return new Handlebars.SafeString higlightedText