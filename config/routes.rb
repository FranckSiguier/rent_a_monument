Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :monuments, only: [:index, :show] do
    resources :reviews, only: [:create]
    resources :bookings, only: [:create]
  end

  resources :users, only: :show do
    resources :monuments, only:[:new, :create, :edit, :update]
  end

  resources :bookings, only: :destroy
  root to: 'pages#home'
end
