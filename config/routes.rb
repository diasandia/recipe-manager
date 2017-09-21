Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  resources :recipes

  # resources :ingredients 

  # resources :recipes do 
  #   resources :recipes_ingredients
  # end
  
end
