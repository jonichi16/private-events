Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :events
  resources :users, only: [:show, :destroy]
  resources :attendances
  root 'events#index'

  get "/healthcheck", to: proc { [200, {}, ["success"]] }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
