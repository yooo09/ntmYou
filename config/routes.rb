Rails.application.routes.draw do
  devise_for :users

  root "posts#index"

  resources :users, only: [:edit, :update, :show]

  resources :posts do
    resources :addposts
  end

end
