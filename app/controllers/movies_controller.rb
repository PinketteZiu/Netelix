class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find_by(user_id: current_user.id)
    @movie.destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :synopsis)
  end
end
