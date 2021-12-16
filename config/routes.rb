Rails.application.routes.draw do

  resources :listings do
    resources :images, only: [:create, :destroy]
    resources :bookings
    member do
      get 'listing'
      get 'price'
      get 'description'
      get 'photo'
      get 'amenity'
      get 'location'
      get 'check_current_bookings'
      get 'review_booking'
    end
  end

  
  get 'users/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :users, only: [:show]

  get 'static_page/index'
  get 'search' => 'searches#search'

  root  'static_pages#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
