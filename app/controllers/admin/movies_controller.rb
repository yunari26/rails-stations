class Admin::MoviesController < ApplicationController

  def index
    @movies = Movie.order('created_at DESC')
  end

end
