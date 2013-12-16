class ObservationsController < ApplicationController

  def index
  end
  
  def new
    @observation = Observation.new
  end
  
  def create
    @observation = Observation.new(observation_params)
    
    respond_to do |format|
      if @observation.save
        format.html { redirect_to observations_path, notice: 'Observation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @observation }
      else
        format.html { render action: 'new' }
        format.json { render json: @observation.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def observation_params
      params.require(:observation).permit(:text, :place)
    end

end
