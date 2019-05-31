Rails.application.routes.draw do
  root 'vuelos#index'
  resources :vuelos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
