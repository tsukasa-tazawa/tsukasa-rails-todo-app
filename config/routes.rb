Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  root 'application#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  resources :tasks
  resources :users
end
