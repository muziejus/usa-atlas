class ObservationsController < ApplicationController

def index
end

def new
  @observation = Observation.new
end

end
