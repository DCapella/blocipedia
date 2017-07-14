Rails.application.routes.draw do
  resources :wikis
  post 'wikis/downgrade'
  resources :charges, only: [:new, :create]

  resources :wikis, only: [] do
    resources :collaborators, only: [:create, :destroy]
  end

  devise_for :users

  #root 'welcome#index'
  root 'wikis#index'
end
