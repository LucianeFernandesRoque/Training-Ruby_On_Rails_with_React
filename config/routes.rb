Rails.application.routes.draw do
  root 'pictures#index'
  resources :pictures
    # Defines the root path route ("/")
    # root "articles#index"
  
end
