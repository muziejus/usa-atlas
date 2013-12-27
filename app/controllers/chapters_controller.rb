class ChaptersController < ApplicationController
  
  def index
    @chapters = Chapter.all
  end
  
  def show
    @chapter = Chapter.find(params[:id])
    @observations = @chapter.observations
  end
  
  # Heavens, this could be DRYer…
  
  def the_42nd_parallel
    @chapters = Chapter.where(book_id: 2)
    render 'index'
  end
  
  def nineteen_nineteen
    @chapters = Chapter.where(book_id: 3)
    render 'index'
  end
  
  def the_big_money
    @chapters = Chapter.where(book_id: 4)
    render 'index'
  end

  def newsreels
    @chapters = Chapter.where(mode_id: 1)
    render 'index'
  end
  
  def narratives
    @chapters = Chapter.where(mode_id: 2)
    render 'index'
  end

  def camera_eyes
    @chapters = Chapter.where(mode_id: 3)
    render 'index'
  end

  def profiles
    @chapters = Chapter.where(mode_id: 4)
    render 'index'
  end
  
end
