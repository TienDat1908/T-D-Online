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
    get 'dashboard', to: 'dashboard#index', as: :dashboard_admin
    resources :users, only: %i[index]
  end

  resources :post_articles
end
