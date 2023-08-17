Rails.application.routes.draw do
  root 'root#index'

  # API route
  namespace :api do
    get 'random_greeting', to: 'greetings#random_greeting'
  end
end
