Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  resources :movies do
    resources :reeviews, except: [:index, :show]
  end

  root 'movies#index'

end
