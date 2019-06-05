Rails.application.routes.draw do
  get 'checkouts/index'
  get 'checkouts/show'
  devise_for :users
  root 'vuelos#index'
  resources :vuelos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
