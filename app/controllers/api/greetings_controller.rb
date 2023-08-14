class Api::GreetingsController < Api::ApplicationController
  def random_greeting
    random_message = Message.order('RANDOM()').first
    render json: { greeting: random_message.description }, status: :ok
  end
end
