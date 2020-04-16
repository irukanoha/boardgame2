Rails.application.routes.draw do
  devise_for :users
  root "homes#index"
  resources :items, only: [:index, :show]
end
