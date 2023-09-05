Rails.application.routes.draw do
  resources :candidatos, only: [:new, :create]
  resources :empregadors, only: [:new, :create, :show, :index, :edit, :update, :destroy]
  resources :main

  root 'main#index'
end

