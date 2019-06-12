Rails.application.routes.draw do

  devise_for :users
  root 'vuelos#index'
  get 'vuelos/routes', to: 'vuelos#routes'
  get '/promo', to: 'vuelos#promo'
  post '/promo', to: 'vuelos#promo_create'
  get '/promo/:id', to: 'vuelos#edit_promo'
  get '/promo/:id', to: 'vuelos#edit_promo', as: 'edit_promo'
  put '/promo/:id', to: 'vuelos#update_promo'
  delete '/promo/:id', to: 'vuelos#destroy_promo'
  delete '/promo', to: 'vuelos#destroy_promo'
  resources :vuelos do 
    resources :checkouts
  end
end
