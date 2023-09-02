Rails.application.routes.draw do
  #resources :candidatos, only: [:new, :create]
  #root 'candidatos#new'

  resources :empregadors, only: [:new, :create, :show, :index]
  root 'empregadors#new'
end
