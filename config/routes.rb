Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  root 'application#index'
  get  '/users', to: 'users#index'
  get  '/users', to: 'users#show'
  get  '/users/new',  to: 'users#new'
  post '/users',  to: 'users#create'
  get  '/login',   to: 'sessions#new'
  resources :tasks
  resources :users
end
