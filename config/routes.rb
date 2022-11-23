Rails.application.routes.draw do
  
  get "about" => 'sites#about'
  get "signup" => "users#new"
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "users" => "users#index"

  resources :users
  resources :sessions, except: [:edit, :update, :show, :new, :destroy]
  resources :regis do
    resources :charts
    resources :patients
  end

root 'sites#home'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
