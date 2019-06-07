Rails.application.routes.draw do

  devise_for :users
  root 'vuelos#index'
  get 'vuelos/routes', to: 'vuelos#routes'
  resources :vuelos do 
    resources :checkouts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
