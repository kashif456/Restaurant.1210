Rails.application.routes.draw do
  resources :reservations
  root 'restaurants#index'
  devise_for :users
  resources :restaurants
end
