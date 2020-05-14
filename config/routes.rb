Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'
  # get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  # get '/cocktails/:id/doses/new', to: 'doses#new'
  # post '/cocktails/:id/doses', to: 'doses#create'

  root to: 'cocktails#index'
  resources :cocktails do
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
end
