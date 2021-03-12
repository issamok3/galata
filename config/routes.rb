Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sites, only: [:index, :show] do  
    resources :articles, only: [:index, :show, :destroy]
    resources :photos, only: [:index, :new, :destroy, :create]
    resources :audios, only: [:index, :new, :destroy]
    resources :videos, only: [:index, :new, :destroy, :create]
  end
  resource :dashboard, only: :show
  resources :articles, only: [:new, :create]
  resources :conversations, only: [:show, :index] do
  resources :messages, only: :create
  end
  resources :user do
    resources :conversations, only: :create
  end
end
