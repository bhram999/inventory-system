Rails.application.routes.draw do
  resources :stores do
    get 'books/search'
    get 'search_bar'
    resources :books
  end
  devise_for :users
  get 'home/home_page'
  get 'home/dashboard'

  # Defines the root path route ("/")
  root "home#home_page"
end
