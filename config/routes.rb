Rails.application.routes.draw do
  root 'pictures#index'

  get 'pictures', to: 'pictures#index'
  resources :pictures, only: [:index,:new] do
    post :picture
    # Defines the root path route ("/")
    # root "articles#index"
  end
end
