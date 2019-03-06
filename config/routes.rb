Rails.application.routes.draw do
  devise_for :users
  resources :deliveries
  resources :brands
  resources :categories
  
  resources :products do
    resources :details, only: %i[create destroy edit update]
  end

  resources :details, only: %i[index show] do
    resource :orders, only: :create
    resource :wishlist, only: %i[create destroy]
    resources :comments, only: %i[new create edit update destroy]
    collection do
      get 'view_for_category/:name', to: 'details#view_for_category', as: 'search_category'
    end
  end
  resources :clusters, only: %i[show]
  resources :wishlists, only: :index

  resources :orders, only: [:destroy] do
    patch 'remove_one_item'
    collection do
      get 'cart'
      delete 'empty_cart'
      post 'buy'
    end
  end

  resources :billings, only: [] do
    collection do
      post 'pre_pay'
      get 'execute'
    end
  end
  
  get 'pages/index'
  get 'pages/home'
  get 'pages/contact'
  get 'pages/us'
  resources :authors
  resources :banners
  

  root 'details#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
