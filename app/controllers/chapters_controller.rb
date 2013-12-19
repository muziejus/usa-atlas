class ChaptersController < ApplicationController
  
  def index
    @chapters = Chapter.all
  end
  
  def show
    @chapter = Chapter.find(params[:id])
    @observations = @chapter.observations
  end
  
end
