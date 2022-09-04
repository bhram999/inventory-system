Rails.application.routes.draw do
  resources :stores do
    resources :books
  end
  devise_for :users
  get 'home/home_page'
  get 'home/dashboard'
  get 'books/search'

  # Defines the root path route ("/")
  root "home#home_page"
end
