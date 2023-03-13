Rails.application.routes.draw do
  resources :dentista
  resources :appointments
  resources :recepcionists
  root 'pages#home'
  devise_for :users

  get 'user/atendimentos', to: 'atendimentos#paciente_atendimentos', as: 'paciente_atendimentos'
  get 'atendimentos/new'
  get '/atendimentos/:id/editar', to: 'atendimentos#editar', as: 'editar_atendimento'
  get 'atendimento', to: 'atendimento#index'

  # root "articles#index"
end
