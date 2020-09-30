Rails.application.routes.draw do
  resources :reviews, only: [:new, :create, :update, :delete]
  resources :product_categories
  resources :categories, only: [:show]
  resources :products, only: [:index, :new, :show, :create, :edit, :update, :delete]
  resources :users, only: [:show, :new, :create, :edit, :update, :delete]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  root 'welcome#home'

  # get 'products', to: 'products#index', as: 'home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
