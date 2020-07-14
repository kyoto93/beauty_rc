class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def index
  end

  def show
    @genre = Genre.find(params[:id])
    @histories = History.where(user_id:current_user.id, genre_id: @genre.id)
  end

  def edit
  end

  def create
    genre = Genre.new(genre_params)
    genre.save
    redirect_to tops_path
  end

  def destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:name, :price, :body, histories_images: [])
 end
end
