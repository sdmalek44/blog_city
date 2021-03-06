Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blogs#index'
  resources :blogs, only: [:index, :show] do
    resources :comments, only: [:create, :destroy, :edit, :update]
    namespace :default do
      resources :comments, only: [:create, :destroy, :edit, :update]
    end
  end
  namespace :admin do
    resources :blogs, only: [:new, :create, :destroy, :edit, :update]
    resources :categories, only: [:new, :create, :destroy]
  end
  resources :categories, only: [:show]
  resources :users, only: [:new, :create]
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
