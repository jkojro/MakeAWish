Rails.application.routes.draw do
  
  resources :wishes do
      resources :querries  do
          resources :myanswers  
      end 
end

  devise_for :users
  root 'home#index'
  get 'home/wishlist'
  get 'home/intro'
  get 'home/sign'
  get 'home/null'
  get 'home/info'
  get 'home/about'


end
