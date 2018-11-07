Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "restaurants#index"

  namespace :admin do
    resources :restaurants, only: [:edit, :update, :destroy]
    resources :reviews, only: [:edit, :update, :destroy]
  end

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  resources :restaurants, only: [:index, :show, :new, :create]
  resources :reviews, only: [:index, :show]
end
