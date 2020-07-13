Rails.application.routes.draw do
 # Index ONLY  
  resources :teams, only: [:index, :show]
 
  
 #full CRUD ability for clubs 
  resources :clubs  
 
  #users have full CRUD ability over their own clubs
  resources :users, only: :show do
    resources :clubs
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/auth/facebook/callback' => 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/user/:id', to: 'users#show', as:'user_path'

  root 'static#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
