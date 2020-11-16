Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :monuments, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:create]
    resources :bookings, only: [:create]
  end
  resources :user, only: :show

  resources :bookings, only: :destroy
  root to: 'pages#home'
end
