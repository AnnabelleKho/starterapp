Rails.application.routes.draw do
  resources :portfolio_items
  resources :links
  resources :freelancer_profiles
  resources :enquiries
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'privacy', to: 'pages#privacy'

  devise_for :users
  root 'home#index'


end
