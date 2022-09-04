Rails.application.routes.draw do
  resources :stores do
    resources :books
  end
  devise_for :users
  get 'home/home_page'
  get 'home/dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#home_page"
end
