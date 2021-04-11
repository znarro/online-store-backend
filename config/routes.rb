Rails.application.routes.draw do
  resources :products, only: %i[index]
  resources :categories, only: %i[index]
  root 'products#index'
end
