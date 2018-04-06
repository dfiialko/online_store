Rails.application.routes.draw do
  get 'registration/sign_up_params'
  get 'registration/account_update_params'

  devise_for :users,:controllers => { registration: 'registration' }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories, only: [:index,:show,:search,:search_results] do
    collection do
      get :new_items
      get :onsale_items
    end
  end

  resources :parent_categories
  root 'categories#index'
  resources :products

  resources :manufacturers
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
