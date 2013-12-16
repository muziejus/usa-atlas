module ObservationsHelper

def list_modes
  modes = Mode.all.map{|row| [row.name, row.id]}
end

end
