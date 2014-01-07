class Api::V1::ModesController < ApplicationController
  respond_to :json
  
  def index
    respond_with Mode.all #, status: ok
  end
  
  def show
    respond_with Mode.find(params[:id]) #, status: ok
  end

end
