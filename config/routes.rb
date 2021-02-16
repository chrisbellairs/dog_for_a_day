Rails.application.routes.draw do
  get '/pages', to: 'pages#account'

  resources :dogs do
    resources :bookings, except: [:index]
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
