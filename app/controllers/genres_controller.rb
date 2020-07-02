class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def index
  end

  def edit
  end

  def create
    genre = Genre.new(genre_params)
    genre.save
    redirect_to genre_path
  end

  def destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:body)
end
