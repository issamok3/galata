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
  end
  resource :dashboard, only: :show
  resources :articles, only: [:index, :show]
  resources :photos, only: [:index, :new, :create]
  resources :audios, only: :index
  resources :videos, only: :index
end
