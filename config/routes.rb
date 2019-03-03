Rails.application.routes.draw do
  resources :deliveries
  resources :brands

  resources :products do 
    resources :details, only: [:create, :destroy]
  end

  resources :details, only: [:index, :show] do
    resource :orders, only: :create
  end

  resources :orders, only: [:destroy] do
    collection do
      get 'cart'
      delete 'empty_cart'
      post 'buy'
    end
  end

  devise_for :users
  get 'pages/index'
  get 'pages/home'
  get 'pages/contact'
  get 'pages/us'
  resources :authors
  resources :banners
  resources :categories

  root "details#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
