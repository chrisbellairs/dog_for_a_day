Rails.application.routes.draw do
  get '/pages', to: 'pages#dashboard'
  get '/pages/my_dogs', to: 'pages#my_dogs'
  get '/pages/my_bookings', to: 'pages#my_bookings'
  get '/pages/my_account', to: 'pages#my_account'

  resources :dogs do
    resources :bookings, except: [:index]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
