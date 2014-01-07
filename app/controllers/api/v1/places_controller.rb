class Api::V1::PlacesController < ApplicationController
  respond_to :json
  
  def index
    respond_with Place.all
  end
  
  def show
    respond_with Place.find(params[:id])
  end
  
  def new
  end
  
  def create
  end

end
