Rails.application.routes.draw do
  devise_for :users
  root 'top#index'

  namespace :users do
  	resources :manifests, only: [ :new, :create ]
  end

  namespace :admin do
    root 'top#index'
    resources :public_manifests
    resources :manifests
  end
end