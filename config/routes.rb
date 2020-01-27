Rails.application.routes.draw do

  namespace :admin do
      resources :categories
      resources :supplements
      resources :articles
      root to: "categories#index"
  end
  
  get 'welcome/index'
  resources :supplements
  resources :categories
  resources :articles
  root 'welcome#index'

end
