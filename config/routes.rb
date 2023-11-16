Rails.application.routes.draw do
  devise_for :users
  resources :expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "expenses#index"
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
end
