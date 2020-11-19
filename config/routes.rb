Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :monuments, only: [:index, :show] do
    resources :bookings, only: [:create]
    resources :reviews, only: [:new, :create]
  end

  resources :users, only: [:show, :update, :edit] do
    resources :monuments, only:[:new, :create, :edit, :update]
  end

  resources :bookings, only: :destroy
  root to: 'pages#home'
end
