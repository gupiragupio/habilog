Rails.application.routes.draw do
  devise_for :users
  resources :habits, only: [:index, :new, :create]
  root "habits#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
