Rails.application.routes.draw do


  resources :resorts, only: [:home, :index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :show, :edit, :update]
  resources :favorite_resorts, only: [:create, :destroy, :index]

  devise_for :users
  root to: 'pages#home'

  # get "favorites/", to: "favorite_resorts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

