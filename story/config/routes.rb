Rails.application.routes.draw do
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get    '/signup',   to: 'static_pages#signup'
  get    '/add',   to: 'static_pages#add'
  get    '/dashboard',   to: 'static_pages#dashboard'
   get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  resources :users
end
