# frozen_string_literal: true

Rails.application.routes.draw do
  post 'votes/create', to: 'votes#create'
  resources :referendas
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
