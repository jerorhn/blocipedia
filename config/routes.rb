Rails.application.routes.draw do
  devise_for :users

  resources :wikis

  resources :charges

  post 'downgrade', to: 'welcome#downgrade'

  root 'welcome#index'
end
