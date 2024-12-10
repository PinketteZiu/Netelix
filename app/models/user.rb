class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :watchlist
  has_many :movies, through: :watchlist

  def add_to_watchlist(movie)
    watchlist.create(movie: movie) unless watched_movies.include?(movie)
  end
end
