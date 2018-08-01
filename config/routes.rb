Rails.application.routes.draw do

<<<<<<< HEAD
=======
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
>>>>>>> 18cb15520b324026098bc286ccb0c83ee904a344
  get 'resorts/home'
  get 'resorts/index'
  get 'resorts/show'

  resources :resorts, only: [:home, :index, :show] do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :show, :edit, :update]

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
