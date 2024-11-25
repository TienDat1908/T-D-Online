Rails.application.routes.draw do
  root to: 'home#index'

  # Devise cho User
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks'
  }

  # Devise cho AdminUser
  devise_for :admin_users, controllers: {
    sessions: 'admin_users/sessions'
  }

  # Dashboard cho User
  get 'dashboard', to: 'dashboard#index', as: :dashboard

  # Namespace cho admin_users
  namespace :admin_users do
    resources :dashboard
    resources :users
    resources :post_articles
  end

  resources :post_articles
end
