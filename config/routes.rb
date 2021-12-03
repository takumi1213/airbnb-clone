Rails.application.routes.draw do

  get 'users/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  resources :users, only: [:show]

  get 'static_page/index'
  
  root  'static_pages#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
