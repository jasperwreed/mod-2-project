Rails.application.routes.draw do
  resources :reviews, only: [:new, :create, :update, :destroy]
  resources :product_categories
  resources :categories, only: [:show]
  resources :products, only: [:new, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]

  root 'products', to: 'products#index', as: 'home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  # root 'welcome#home'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
