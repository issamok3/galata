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
    resources :photos, only: :index
    resources :audios, only: :index
    resources :videos, only: :index
  end
  resource :dashboard, only: :show
  resources :contents, only: :show do
    resources :reviews, only: [:create, :new, :index]
  end

  resources :videos, only: [] do
    resources :reviews, only: :create
  end
end
