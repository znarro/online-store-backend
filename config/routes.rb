Rails.application.routes.draw do
  resources :products, only: %i[index show]
  root 'products#index'
end
