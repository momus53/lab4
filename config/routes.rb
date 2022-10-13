Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets, except: [:edit, :update]

  root "tweets#index"
end
