Rails.application.routes.draw do
  get 'customers/index'
  get 'customers/ordered'
  get 'customers/missing_email'
  root to: 'customers#index'
  resources :customers

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
