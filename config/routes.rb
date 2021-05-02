Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  resources :places
  resources :videos, only: [:new, :create]
  get 'videos/search', to: 'videos#search'
  get 'videos/place', to: 'videos#place'
  get 'index2', to: 'static_pages#index2' 
end
