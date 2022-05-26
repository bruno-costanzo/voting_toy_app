# frozen_string_literal: true

Rails.application.routes.draw do
  root "referendas#index"

  post 'votes/create', to: 'votes#create'
  resources :referendas
  resources :people
end
