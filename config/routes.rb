Rails.application.routes.draw do
  devise_for :users
  root to: 'cafe_images#index'
  resources :cafe_images, only: [:new, :create, :index, :edit, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
end
