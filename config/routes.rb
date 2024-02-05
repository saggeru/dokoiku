Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  root to: 'posts#index'
  resources :searches, only: [:show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show] do
    resources :relationships, only: [:create, :destroy]
  end
  get '/users/:id/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
  patch '/users/:id/withdrawal' => 'users#withdrawal', as: 'withdrawal'
end
