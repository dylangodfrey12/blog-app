Rails.application.routes.draw do
   root 'home#index'
  
  get 'about', to: 'pages#about'
  get 'login', to: 'sessions#new'
  delete 'logout',  to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  
  post 'signup', to: 'users#create'
  post 'login', to: 'sessions#create'

  resources :articles
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
