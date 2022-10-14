Rails.application.routes.draw do
  resources :monsters, only: [:index, :show]
  resources :tweets
  root "tweets#index"
  get '/tweet/:id', to: 'tweets#destroy',as: 'destroy_tweet'
end
