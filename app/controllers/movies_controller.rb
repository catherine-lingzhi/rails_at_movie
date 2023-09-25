class MoviesController < ApplicationController
  def index
    # @movies = Movie.all # creates the N+1 problem
    # solution to this is ...
    @movies = Movie.includes(:production_company).all.order("average_vote DESC")
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
