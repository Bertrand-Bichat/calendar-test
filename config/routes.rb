Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'

  resources :restaurants do
    resources :rentals do
      resources :bookings, only: [:create]
    end
  end

  resources :bookings, only: [:destroy]
end
