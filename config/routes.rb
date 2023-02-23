Rails.application.routes.draw do
  get 'movies/new'
  get 'movies/create'
  get 'lists/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'

  resources :lists do
    resources :bookmarks
  end

  resources :bookmarks, only: [:destroy]
end
