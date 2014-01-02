class Api::V1::ObservationsController < ApplicationController
  respond_to :json
  
  def index
    respond_with Observation.all
  end
  
  def show
    respond_with Observation.find(params[:id])
  end
  
  def new
    @observation = Observation.new
  end
  
  def create
    @observation = Observation.new(observation_params)
    @observation.update_parent_ids({page: params[:page][:number].to_i, place: params[:place][:name].downcase})
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
      params.require(:observation).permit(:text, :place_name_in_text, :mode_id, 
        :dialogue, :adjective, :not_a_place, :notes, :order_in_page)
    end

end
