Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sites, only: [:index, :show, :new, :create, :edit, :destroy] do
    member do
      get :videos
      get :articles
      get :audios
      get :photos
    end
  end
  resource :dashboard, only: :show
  resources :contents, only: :show
  resources :conversations, only: [:show, :index] do
  resources :messages, only: :create
  end
  resources :user do
    resources :conversations, only: :create
  end
end
