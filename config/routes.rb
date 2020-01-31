Rails.application.routes.draw do

  get 'static_pages/home'
  get 'static_pages/contact'
  root 'static_pages#home'

  namespace :admin do
      resources :categories
      resources :supplements
      resources :articles
      resources :authors
      root to: "categories#index"
  end

  resources :supplements, only: [:index, :show]
  resources :categories, only: [:show]
  resources :articles, only: [:index, :show], path: 'health-news'

end
