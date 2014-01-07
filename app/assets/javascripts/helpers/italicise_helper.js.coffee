Ember.Handlebars.helper 'italicise', (input) ->
  input.replace(/^\*/, "<i>")
  input.replace(/\*$/, "</i>")
  return new Handlebars.SafeString input