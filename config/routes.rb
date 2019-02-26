Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/home'
  get 'pages/contact'
  get 'pages/us'
  resources :authors
  resources :banners
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
