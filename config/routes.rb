Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :accounts, only: [:show] do
    resources :parking_spots, only: [:new, :create]
    member do
      get 'notifications', to: 'accounts#notifications'
    end
  end

  resources :parking_spots, only: [:show, :index] do
    member do
      patch 'available', to: 'parking_spots#toggle_available'
    end
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [:destroy]

end
