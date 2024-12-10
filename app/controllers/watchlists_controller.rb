class WatchlistController < ApplicationController

  def index
    @movies = current_user.watchlist
  end

  def create
    @movie = Movie.find(params[:movie_id])

    if current_user.add_to_watchlist(@movie)
      redirect_to movies_path, notice: 'Film ajouté à votre liste !'
    else
      redirect_to movies_path, alert: 'Le film a bien été retiré de votre liste.'
    end
  end
end
