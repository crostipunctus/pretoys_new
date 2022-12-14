Rails.application.routes.draw do
  resources :order_items
  devise_for :users
  resources :toys

  get "cart", to: "carts#index"
  post "add_cart", to: "carts#add"

  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "toys#index"
end
