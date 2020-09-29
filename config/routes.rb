Rails.application.routes.draw do
  resources :reviews
  resources :product_categories
  resources :categories
  resources :products, only: [:index, :new, :show, :create, :edit, :update, :delete]
  resources :users, only: [:show, :new, :create, :edit, :update, :delete]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
