Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'users/new'
  root 'static_pages#home'
  
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  # resources :account_activations, only: [:edit]
  # resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  
end

# Rails.application.routes.draw
  # get 'users/new'
#   root 'static_pages#home'
#   # root 'application#hello'
  
#   get 'static_pages/home'
#   # => StaticPages#home
  
#   get 'static_pages/help'
#   # => StaticPages#help
  
#   get 'static_pages/about'
  
  
#   get 'static_pages/contact'
  
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

# end
