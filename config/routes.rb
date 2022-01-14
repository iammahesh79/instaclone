Rails.application.routes.draw do
  resources :user_details
  resources :users
  get 'first_page/login'
  get 'first_page/logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "first_page#login"
  post 'first_page/login'
  get "home/index" ,to: "home#index"  
  get "home/profile" ,to: "home#profile"
end
