Rails.application.routes.draw do
  resources :enquiries
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'privacy', to: 'pages#privacy'

  devise_for :users
  root 'home#index'


end
