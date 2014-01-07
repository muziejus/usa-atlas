class Api::V1::ChaptersController < ApplicationController
  respond_to :json
  
  def index
#     if params[:book_id]
#       respond_with Chapter.where(book_id: params[:book_id])
#     else
      respond_with Chapter.all
#     end
  end
  
  def show
    respond_with Chapter.find(params[:id])
  end

end
