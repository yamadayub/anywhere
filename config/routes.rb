Rails.application.routes.draw do
  get 'videos/new'
  get 'videos/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#index'
  resources :places
  resources :videos
end
