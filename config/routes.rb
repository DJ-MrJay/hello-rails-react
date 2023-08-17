Rails.application.routes.draw do
  root 'root#index'

  # API route
  namespace :api do
    resources :greetings, only: [:index], :path => "random_greeting"
  end
end
