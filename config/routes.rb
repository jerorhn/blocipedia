Rails.application.routes.draw do
  devise_for :users

  resources :wikis do
    resources :collaborators, only: [:new, :create, :destroy]
  end

  resources :charges

  post 'downgrade', to: 'welcome#downgrade'

  root 'welcome#index'
end
