Rails.application.routes.draw do

  root to: 'categories#index'

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]
  
  resources :categories, only: [:index, :show]
  
  resources :categories do 
    resources :recipes
  end
  
end
