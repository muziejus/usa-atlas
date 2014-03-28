Ember.Handlebars.helper 'trimText', (text, placeNameInText) ->
  stringLength = text.length
  if stringLength > 70
    textArray = text.split(placeNameInText)
    frontLength = textArray[0].length
    tailLength = textArray[1].length
    if frontLength < 30 or tailLength < 30
      if frontLength < 30
        output = textArray[0] + placeNameInText + textArray[1].substring(0, 60 - frontLength).replace(/// \S*$///, "") + "…"
      else
        output = "…" + textArray[0].substring(frontLength - 60 + tailLength, frontLength).replace(///^\S* ///, "") + placeNameInText + textArray[1]
    else
      output = "…" + textArray[0].substring(frontLength - 30, frontLength).replace(///^\S* ///, "") + placeNameInText + textArray[1].substring(0, 30).replace(/// \S*$///, "") + "…"
  else
    output = text
  return new Handlebars.SafeString output
