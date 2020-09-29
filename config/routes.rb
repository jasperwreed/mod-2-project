Rails.application.routes.draw do
  resources :reviews
  resources :product_categories
  resources :categories
  resources :products, [:index]
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
