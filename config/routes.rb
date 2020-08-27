Rails.application.routes.draw do
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'registrations#new' # [!]Temporary name
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
