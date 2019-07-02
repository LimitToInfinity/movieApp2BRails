class ShowingsController < ApplicationController
  def new
    @showing = Showing.new
  end

  def create 
    @showing = Showing.create(allowed_params)
    redirect_to movie_path(@showing.movie_id)
  end

  private 

def allowed_params
  params.require(:showing).permit(:time,:movie_id)
end
end
