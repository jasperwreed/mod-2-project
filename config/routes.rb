Rails.application.routes.draw do
  resources :reviews, only: [:new, :create, :update, :destroy]
  resources :product_categories
  resources :categories, only: [:show]
  resources :products, only: [:index, :new, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]



  get '/login' => 'sessions#new'
  post '/login' => 'products#index'
  delete "logout", to: "sessions#destroy", as: "log_out"

  # root 'welcome#home'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end