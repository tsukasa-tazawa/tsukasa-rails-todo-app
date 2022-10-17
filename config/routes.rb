Rails.application.routes.draw do
  get 'static_pages/home'
  root 'application#index'
  get  '/signup',  to: 'users#new'
  resources :tasks
end
