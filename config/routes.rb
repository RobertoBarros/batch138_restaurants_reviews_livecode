Rails.application.routes.draw do
  get 'reviews/new'

  namespace :admin do
    get 'restaurants/index'
  end

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end



  namespace :admin do
    resources :restaurants, only: [:index]
  end

  root to: 'restaurants#index'
end
