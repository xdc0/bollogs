Rails.application.routes.draw do
  namespace :admin do
    root 'dashboard#index'
    resources :login, only: [:index, :create]
    resources :posts
    resources :dashboard, only: [:index]
  end
  resources :blog, only: [:index, :show]
end
