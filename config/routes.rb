Rails.application.routes.draw do
  resources :airports do
    patch :update_position, on: :member
  end
  resources :aircrafts do
    resources :places, shallow: true
  end
  resources :routes
  resources :tickets
  resources :users

  resource :search, only: [:new, :show, :edit]

  get 'home/index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
