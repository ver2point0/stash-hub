Rails.application.routes.draw do
  
  devise_for :users
  resources :stashes
  
  root "stashes#index"
  
end
