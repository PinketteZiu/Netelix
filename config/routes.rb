Rails.application.routes.draw do
  get 'movie/show'
  devise_for :users

  root to: 'pages#index'

  resources :users do
    resources :watchlist, only: %i[index create destroy]
  end

  resources :movies, only: [:show]
end
