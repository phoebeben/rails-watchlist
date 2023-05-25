Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # root 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # get 'lists/:id', to: 'lists#show', as: :list
  # post 'lists', to: 'lists#create'
  root 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create show]
  end
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :delete_movies
end
