Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :cagematches
  devise_for :users, path: 'auth', path_names: { 
    sign_in: 'login', sign_out: 'logout', registration: 'register', sign_up: 'signup'
  }
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
