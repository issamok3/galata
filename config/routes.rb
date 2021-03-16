Rails.application.routes.draw do
  get 'notifications/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sites, only: [:index, :show] do
    resources :articles, only: [:index, :show]
    resources :photos, only: [:index]
    resources :audios, only: [:index]
    resources :videos, only: [:index]
  end
  resource :dashboard, only: :show
  resource :settings, only: :show
  resources :contents, only: :show do
    resources :reviews, only: [:create, :new, :index]
  end
  resources :articles, only: [:new, :create, :destroy]
  resources :photos, only: [:new, :create, :destroy]
  resources :audios, only: [:new, :create, :destroy]
  resources :videos, only: [:new, :create, :destroy]
  resources :conversations, only: [:show, :index] do
    resources :messages, only: :create
  end
  resources :users do
    resources :conversations, only: [:create, :update]
  end
  resources :notifications do
    collection do
      get :mark_as_read
      # TODO: change to post, use fetch with token
      # https://kitt.lewagon.com/knowledge/tutorials/fetch_in_rails
    end
  end
end
