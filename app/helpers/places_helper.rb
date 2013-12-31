module PlacesHelper

def observations_count(place)
  count = Observation.where(place_id: place.id).count
end

end
