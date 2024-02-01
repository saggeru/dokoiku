Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts
  resources :searches, only: [:show]
  resources :users, only: [:show] do
    resources :reletionships, only: [:create, :destroy]
  end
end
