Rails.application.routes.draw do
  devise_for :users
  get 'store/home_page'
  get 'store/dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "store#home_page"
end
