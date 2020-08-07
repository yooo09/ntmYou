Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :users, only: [:edit, :update, :show]
  resources :posts
  # resources :posts do
  #   resources :comments, only: [:create, :destroy]
  # end
end
