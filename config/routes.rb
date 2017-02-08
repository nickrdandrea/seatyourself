Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurant

  resources :users

  resources :reservation

  resources :sessions, only: [:new, :create, :destroy]
end
