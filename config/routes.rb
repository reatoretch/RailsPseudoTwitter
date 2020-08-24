Rails.application.routes.draw do
  get 'sessions/new'
  resources :registrations, only: [:new, :create]
  root to: 'registrations#new' # [!]Temporary name
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
