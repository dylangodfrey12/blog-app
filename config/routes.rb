Rails.application.routes.draw do
   root 'home#index'
  
  get 'about', to: 'pages#about'
  resources :articles
  resources :users
  resources :login
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
