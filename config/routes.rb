Rails.application.routes.draw do
  resources :instructors, only: [:index, :update, :create, :destroy]
  resources :students, only: [:index, :update, :create, :destroy]
end
