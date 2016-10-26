Rails.application.routes.draw do

  root 'sessions#new'

  resources :sessions, only: [:index, :show, :create, :new]

  get 'secrets/show', to: 'secrets#show'
  get 'sessions/destroy', to: 'sessions#destroy'

end
