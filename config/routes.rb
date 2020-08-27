Rails.application.routes.draw do

  resource :registrations, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resource :settings, only: [:edit, :update]
  
  resources :users, only: [:index, :show] do
    resource :follows, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :tweets do
    get :timeline, on: :collection
  end

  root to: 'registrations#new'

end
