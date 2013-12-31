module ObservationsHelper

def list_modes
  modes = Mode.all.map{|row| [row.name, row.id]}
end

def last_observation
  if Observation.count > 0
    observation = Observation.last
  else
    observation = Observation.new
  end
end

end
