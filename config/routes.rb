Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/legal', to: 'pages#legal', as: 'legal'
  # get '/La_maison_ludoria', to: 'pages#about', as: 'about'
  get "/download_pdf", to: 'pages#download_pdf'
  root to: 'measures#index'
  resources :measures, only: [:index]
  resources :events, only: [:index]
  resources :users, only: [:update]
  get '/print_measures', to: 'user#print_measures', as: 'print_user_measures'
  resources :contacts, only: [:create]
  resources :blog_articles, as: :blog, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
