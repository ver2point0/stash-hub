Rails.application.routes.draw do
  
  devise_for :users
  resources :stashes do
    member do
      put "like", to: "stashes#upvote"
    end
  end
  
  root "stashes#index"
  
end
