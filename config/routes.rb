Rails.application.routes.draw do
  devise_for :users
  root to: "lists#index"
  resources :lists
  resources :tasks do
    member do
      patch :complete
    end
  end
end
