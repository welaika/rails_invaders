Rails.application.routes.draw do
  resources :matches, only: [:create, :show, :index, :update]
  resource :ping_user, only: :create

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', as: :signin
  get '/signout' => 'sessions#destroy', as: :signout
  get '/auth/failure' => 'sessions#failure'
end
