Rails.application.routes.draw do
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  get 'resorts/home'
  get 'resorts/index'
  get 'resorts/show'
  devise_for :users
  root to: 'resorts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
