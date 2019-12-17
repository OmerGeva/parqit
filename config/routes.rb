Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :accounts, only: [:show] do
    resources :garages, only: [:new, :create]
  end

  resources :garages, only: [:index, :show] do
    resources :parking_spots, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
