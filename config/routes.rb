Rails.application.routes.draw do
  resources :tweets
  resource :registrations, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resource :settings, only: [:edit, :update]
  resources :users, only: [:index, :show]
  root to: 'registrations#new' # [!]Temporary name
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
