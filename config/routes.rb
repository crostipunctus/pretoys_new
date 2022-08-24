Rails.application.routes.draw do
  devise_for :users
  resources :toys

  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "toys#index"
end
