Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :sites, only: [:index, :show ] do
    # member do
    #   get :videos
    #   get :articles
    #   get 'articles/:id'
    #   get :audios
    #   get :photos
    # end
    resources :articles, only: [:index, :show]
    resources :photos, only: [:index, :new]
    resources :audios, only: [:index, :new]
    resources :videos, only: [:index, :new]
  end
  resource :dashboard, only: :show
  resources :articles, only: [:new, :create]
  # resources :photos, only: :new
  # resources :audios, only: :new
  # resources :videos, only: :new
end
