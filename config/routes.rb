Rails.application.routes.draw do
  root to: "ideas#index"
  resources :categories, only: [:create]
  resources :ideas, only: [:create,:index]
end
