Rails.application.routes.draw do
  resources :regis do
    resources :charts
    resources :patients
  end

root 'regis#index'
  
  # Defines the root path route ("/")
  # root "articles#index"
end
