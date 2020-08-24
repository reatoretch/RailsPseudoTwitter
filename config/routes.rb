Rails.application.routes.draw do
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :show]
  root to: 'registrations#new' # [!]Temporary name
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
