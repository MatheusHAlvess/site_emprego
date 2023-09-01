Rails.application.routes.draw do
  resources :vagas
  resources :empregadors
  resources :candidaturas
  resources :candidatos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
