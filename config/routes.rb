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
    resources :articles, only: [:index, :show, :destroy]
    resources :photos, only: [:index, :destroy]
    resources :audios, only: [:index, :destroy]
    resources :videos, only: [:index, :destroy]
  end
  resource :dashboard, only: :show
end
