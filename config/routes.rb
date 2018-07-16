Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  resources :blogs, only: [:index, :show, :create]
  namespace :admin do
    resources :blogs, only: [:new]
    resources :categories, only: [:new]
  end
  resources :categories, only: [:show, :create]
  resources :users, only: [:new, :create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
