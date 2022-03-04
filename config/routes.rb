Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: [:index]
  root "static_pages#home_page"
  get "static_pages/home_page"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
