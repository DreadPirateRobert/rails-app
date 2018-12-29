Rails.application.routes.draw do
  get 'sessions/new'
  # get 'static_pages/home'
  # get 'static_pages/help'
  resources :microposts
  resources :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/home',    to: 'static_pages#home'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
