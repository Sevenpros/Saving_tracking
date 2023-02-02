Rails.application.routes.draw do
  resources :payments
  resources :credits
  resources :group_members
  resources :distributions
  resources :savings
  resources :groups
  resources :members
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
