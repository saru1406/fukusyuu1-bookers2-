Rails.application.routes.draw do
  devise_for :users
  
  root to:"homes#top"
  get "home/about"=>"homes#about"
  resources :book, only: [:index, :show, :edit, :create, :update, :destroy]
  
end
