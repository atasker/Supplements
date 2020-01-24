Rails.application.routes.draw do

  namespace :admin do
      resources :categories
      resources :supplements
      root to: "categories#index"
  end
  
  get 'welcome/index'
  resources :supplements
  resources :categories
  root 'welcome#index'

end
