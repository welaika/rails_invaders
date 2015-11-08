Rails.application.routes.draw do
  resources :matches, only: [:create, :new, :show, :index, :update]
  resource :ping_user, only: :create
  resource :user_rank, only: :show

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', as: :signin
  get '/signout' => 'sessions#destroy', as: :signout
  get '/auth/failure' => 'sessions#failure'
end
