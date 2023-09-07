Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show, :create, :update, :destroy]
    end
  end
  resources :secret_menu_items, only: [:index, :show, :create, :update, :destroy]
  resources :movie_lists, only: [:index, :show, :create, :update, :destroy]
end