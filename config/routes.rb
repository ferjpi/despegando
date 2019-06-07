Rails.application.routes.draw do

  devise_for :users
  root 'vuelos#index'
  get 'vuelos/routes', to: 'vuelos#routes'
  get '/promo', to: 'vuelos#promo'
  post '/promo', to: 'vuelos#promo_create'
  resources :vuelos do 
    resources :checkouts
  end
end
