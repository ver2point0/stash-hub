Rails.application.routes.draw do
  
  resources :stashes
  
  root "stashes#index"
  
end
