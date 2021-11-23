class Admin::MoviesController < ApplicationController

  def index
    @movies = Movie.order('created_at ASC')
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to admin_movies_path
    else
      render :new
      flash[:alert] = "エラーが発生しました"
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:id, :name, :year, :description, :image_url, :is_showing, :created_at, :updated_at)
  end
end
