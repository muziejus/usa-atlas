class ObservationsController < ApplicationController

  def index
  end
  
  def new
    @observation = Observation.new
  end
  
  def create
    params[:observation][:place_name].downcase!
    @observation = Observation.new(observation_params)
    @place = Place.find_or_create_by(name: params[:observation][:place_name])
    if @place.variants.nil?
      @place.variants = params[:observation][:place_name]
    elsif @place.variants =~ /@place.name/ 
    else 
      @place.variants += @place.variants + ", " + params[:observation][:place_name]
    end
    @place.save
    @observation.place_id = @place.id
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
      params.require(:observation).permit(:text, :place_name, :place_id)
    end

end
