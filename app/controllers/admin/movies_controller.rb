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

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    if @movie.update(movie_params)
      redirect_to admin_movies_path
    else
      flash[:alert] = "エラーが発生しました"
      render :edit
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :description, :image_url, :is_showing)
  end
end
