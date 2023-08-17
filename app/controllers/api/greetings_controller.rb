class Api::GreetingsController < ApplicationController
  def index
    random_greeting = Greeting.order('RANDOM()').first
    render json: { greeting: random_greeting.text }
  end
end
