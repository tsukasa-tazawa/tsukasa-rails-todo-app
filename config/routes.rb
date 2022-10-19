Rails.application.routes.draw do
  get 'static_pages/home'
  root 'application#index'
  get  '/users/new',  to: 'users#new'
  resources :tasks
  resources :users
end
