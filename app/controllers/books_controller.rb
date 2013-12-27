class BooksController < ApplicationController

  def show
    @book = Book.where(name: params[:id].gsub(/-/, " ").split(' ').collect{|word| word.capitalize}.join(" "))
  end

end
