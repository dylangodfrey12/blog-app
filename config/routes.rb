Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

   root 'home#index'
  
  get 'about', to: 'pages#about'
  get 'login', to: 'sessions#new'
  get 'signup', to: 'users#new'
  
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'
  
  delete 'logout',  to: 'sessions#destroy'


  resources :articles
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
