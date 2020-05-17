Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about', as: "about"
  get 'pages/services', as: "services"
  get 'pages/pricing', as: "pricing"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
