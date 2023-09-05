Rails.application.routes.draw do
  resources :empregadors do
    member do
      get 'new_vaga'
      post 'create_vaga'
    end
  end

  resources :candidatos
  resources :empregadors
  resources :vagas
  resources :candidaturas


  root 'home#index'
end

