Rails.application.routes.draw do
  get 'sessions/new'
  get 'static_pages/home'
  root 'application#index'
  get  '/users/new',  to: 'users#new'
  get  '/login',   to: 'sessions#new'
  resources :tasks
  resources :users
end
