Rails.application.routes.draw do
  resources :categories, only: [:create]
  resources :ideas, only: [:create]
end
