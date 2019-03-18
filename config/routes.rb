Rails.application.routes.draw do
  devise_for :users
  get '/legal', to: 'pages#legal', as: 'legal'
  root to: 'pages#home'
  resources :mesures, only: [:index, :show]
  resources :mesures, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
