Rails.application.routes.draw do
  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: 'list'

  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'


  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
  delete 'lists/:id', to: 'lists#destroy', as: 'list_destroy'
end
