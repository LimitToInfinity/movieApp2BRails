class MoviesController < ApplicationController
  before_action :find_movie, only: [:show,:edit,:update,:destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create 
    @movie = Movie.create(allowed_params)
      redirect_to movies_path
  end

  def show
    @showings = Showing.order(:time).select{|showing| showing.movie== @movie}
  end

  def edit 
  end

  def update
    @movie.update(allowed_params)
    redirect_to movie_path(@movie)
  end

  def destroy 
    @movie.destroy
    redirect_to movies_path
  end



  private 

  def allowed_params
    params.require(:movie).permit(:title, :release_date, :in_theaters)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
