Rails.application.routes.draw do
  devise_for :users
  get '/legal', to: 'pages#legal', as: 'legal'
  root to: 'pages#home'
  resources :measures, only: [:index]
  resources :users, only: [:edit, :update]
  get '/print_measures', to: 'user#print_measures', as: 'print_user_measures'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
