Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

   root to: 'toppages#index'
   
   get 'login', to: 'sessions#new'
   post 'login', to: 'session#create'
   delete 'logout', to: 'session#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
end
