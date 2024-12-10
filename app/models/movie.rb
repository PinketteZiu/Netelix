class Movie < ApplicationRecord
  has_many :watchlist
  has_many :users, through: :watchlist
end
