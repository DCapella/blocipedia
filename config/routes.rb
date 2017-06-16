Rails.application.routes.draw do
  resources :wikis
  post 'wikis/downgrade'
  resources :charges, only: [:new, :create]

  devise_for :users

  #root 'welcome#index'
  root 'wikis#index'
end
