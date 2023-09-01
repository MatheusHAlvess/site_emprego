Rails.application.routes.draw do
  resources :candidatos, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'candidatos#new'
end
