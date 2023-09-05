Rails.application.routes.draw do
  resources :candidatos
  resources :empregadors
  resources :vagas
  resources :candidaturas


  root 'home#index'
end

