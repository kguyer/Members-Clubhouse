Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get "users/sign_out" => "users/sessions#destroy"
  end

  root "posts#index"
  
  resources :posts, only: [:new, :create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
