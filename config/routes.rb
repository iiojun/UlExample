Rails.application.routes.draw do
  namespace :mypage do
    root to: 'home#index'
    resources :users, only: [ :show, :update, :edit ]
  end

  #root to: 'lectures#index'
  #resources :lectures, only: [ :index, :show ]
  #resources :user_lectures, only: [ :create, :destroy ]

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
end
