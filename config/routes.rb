Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get '/legal', to: 'pages#legal', as: 'legal'
  get '/Mes_mesures', to: 'pages#my_measure', as: 'my_measures'
  get '/La_maison_ludoria', to: 'pages#about', as: 'about'
  get "/download_pdf", to: 'pages#download_pdf'
  root to: 'pages#home'
  resources :users, only: [:edit, :update]
  get '/print_measures', to: 'user#print_measures', as: 'print_user_measures'
  resources :contacts, only: [:create]
  resources :blog_articles, as: :blog, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
