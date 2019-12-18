Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :accounts, only: [:show] do
    resources :parking_spots, only: [:new, :create]
  end

  resources :parking_spots, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
  end

end
