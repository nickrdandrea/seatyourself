Rails.application.routes.draw do
  root 'restaurants#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants

  resources :users

  namespace :restaurants do
    resources :reservations
  end

  resources :sessions, only: [:new, :create, :destroy]

  get 'login', to: 'sessions#new'
  get 'logout', to: 'session#destroy'
end
