Rails.application.routes.draw do
  resources :secret_menu_items, only: [:index, :show, :create, :update, :destroy]
  resources :movie_lists, only: [:index, :show, :create, :update, :destroy]
end