Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  post 'gallery/index'
  get 'gallery/checkout'
  get 'gallery/purchase_complete'
  post 'gallery/checkout'
  resources :stores
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  devise_for :users
  root to: 'home#index'
  get "gallery/search"
  post "gallery/search"
  get "gallery/cart"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
