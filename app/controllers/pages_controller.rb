class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @movies = Movie.all
  end

  def show
  end
end
