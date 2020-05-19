Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/about', as: "about"
  get 'pages/services', as: "services"
  get 'pages/pricing', as: "pricing"
  get 'pages/commission', as: "commission"
  get "pages/catalog", as: "catalog"
  get "pages/faq", as: "faq"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
