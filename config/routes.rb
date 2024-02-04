Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :searches, only: [:show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show] do
    resources :relationships, only: [:create, :destroy]
  end
end
