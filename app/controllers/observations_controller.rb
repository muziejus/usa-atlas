class ObservationsController < ApplicationController

  def index
  end
  
  def new
    @observation = Observation.new
  end
  
  def create
    params[:place][:name].downcase!
    @observation = Observation.new(observation_params)
    @page = Page.find_or_create_by(number: params[:page][:number].to_i)
    @place = Place.find_or_create_by(name: params[:place][:name])
    @observation.place_id = @place.id
    @observation.page_id = @page.id
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
      params.require(:observation).permit(:text, :mode_id, :dialogue)
    end

end
