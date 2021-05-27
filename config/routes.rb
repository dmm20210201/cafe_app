Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cafe_images#index'
  resources :cafe_images, only: [:new, :create, :index, :destroy]
end
