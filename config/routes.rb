Rails.application.routes.draw do
  resources :sessions, only: %i[ new create destroy ]
  resources :users
  resources :relationships, only: %i[ create destroy ]

  resources :conversations do
    resources :messages
  end
end
