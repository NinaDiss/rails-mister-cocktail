# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Ingredient.destroy_all

puts "Creating ingredients..."
Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "Light rum")
Ingredient.create!(name: "Sweet Vermouth")
Ingredient.create!(name: "Strawberry schnapps")
Ingredient.create!(name: "Champagne")
puts "Finished!"

puts "Cleaning database..."
Cocktail.destroy_all

puts "Creating ingredients..."
Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "White Russian")

puts "Finished!"
