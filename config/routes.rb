Rails.application.routes.draw do
  resources :querries
  resources :wishes
  devise_for :users
  root 'home#index'
  get 'home/wishlist'


end
