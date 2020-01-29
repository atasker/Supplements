Rails.application.routes.draw do

  namespace :admin do
      resources :categories
      resources :supplements
      resources :articles
      root to: "categories#index"
  end
  
  get 'welcome/index'
  root 'welcome#index'

  resources :supplements, only: [:index, :show]
  resources :categories, only: [:show]
  resources :articles, only: [:index, :show], path: 'health-news'

end
