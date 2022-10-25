Rails.application.routes.draw do
  root :to => 'static_pages#home'
  get 'sessions/new'
  get 'static_pages/home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  resources :tasks
  resources :users
end
