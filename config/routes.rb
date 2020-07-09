Rails.application.routes.draw do
 #partial CRUD for ADMIN ONLY, Index and Show for users
  resources :teams, only: [:create, :new, :edit,:update, :index, :show] do 
    resources :players, only: :index
  end
 #full CRUD ability for clubs but only shows players
  resources :clubs do
    resources :players, only: :index
  end
 #full CRUD ability on players FOR ADMIN ONLY
  resources :players
 
  #users have full CRUD ability over their own clubs
  resources :users, only:[:new, :create,:show] do
    resources :clubs
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
