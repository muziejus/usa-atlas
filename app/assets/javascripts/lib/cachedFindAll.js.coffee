UsaAtlas.CachedFindAll = (modelKey, store) ->
  all = store.all modelKey
  if all.get('length') > 1
    all
  else
    store.find modelKey