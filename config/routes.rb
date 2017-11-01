Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  root to: "home#index"
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end