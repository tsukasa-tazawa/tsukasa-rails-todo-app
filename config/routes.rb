Rails.application.routes.draw do
  root 'application#index'
  get  '/signup',  to: 'users#new'
  resources :tasks
end
