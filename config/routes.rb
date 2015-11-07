Rails.application.routes.draw do
  root to: 'static#home'
  match "/websocket", to: ActionCable.server, via: [:get, :post]

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', as: :signin
  get '/signout' => 'sessions#destroy', as: :signout
  get '/auth/failure' => 'sessions#failure'
end
