class ObservationsController < ApplicationController
  autocomplete :place, :name, full: true

  def index
    @observations = Observation.all
  end
  
  def new
    @observation = Observation.new
  end
  
  def create
    @observation = Observation.new(observation_params)
    @page = Page.find_or_create_by(number: params[:page][:number].to_i)
    @place = Place.find_or_create_by(name: params[:place][:name].downcase)
#     @place.add_variants(@observation.place_name_in_text)
#     @place.add_geocoding_notes(params[:place][:geocoding_notes])
    @observation.place_id = @place.id
    @observation.page_id = @page.id
#     @observation.chapter_id = some_method
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
  
  def the_42nd_parallel
    render 'index'
  end
  
  def nineteen_nineteen
    render 'index'
  end
  
  def the_big_money
    render 'index'
  end

  private
    def observation_params
      params.require(:observation).permit(:text, :place_name_in_text, :mode_id, 
        :dialogue, :adjective, :not_a_place, :notes, :order_in_page)
    end

end
