Rails.application.routes.draw do
  # get 'reviews/create'
  # get 'bookings/create'
  # get 'bookings/destroy'
  # get 'monuments/index'
  # get 'monuments/show'
  # get 'monuments/new'
  # get 'monuments/create'
  # get 'monuments/edit'
  # get 'monuments/update'
  # get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :monuments, only: [:index, :show] do
    resources :reviews, only: [:create]
    resources :bookings, only: [:create]
  end
  resources :user, only: :show do
    resources :monuments, only: [:new, :create, :edit, :update]
  end
  resources :bookings, only: :destroy
  root to: 'pages#home'
end
