Rails.application.routes.draw do
  get 'admin', to: 'admin#index'

  resources :proposals
  resources :messages
  resources :gigs
  resources :gig_types
  resources :org_profiles
  resources :portfolio_items
  resources :links
  resources :freelancer_profiles
  resources :enquiries
  resources :charges
  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get 'privacy', to: 'pages#privacy'

  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'


end
