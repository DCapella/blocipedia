Rails.application.routes.draw do
  resources :wikis

  devise_for :users

  #root 'welcome#index'
  root 'wikis#index'
end
