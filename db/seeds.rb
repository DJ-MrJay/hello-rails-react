# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed the messages table with sample greetings
greetings = [
  "Greetings from the app!",
  "Hey there, how's it going?",
  "Hi there, make yourself at home!",
  "Welcome to our awesome app.",
  "Welcome aboard our digital journey."
]

greetings.each do |greeting|
  Message.create(description: greeting)
end
