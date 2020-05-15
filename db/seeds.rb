# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts "Destroy data"
# Ingredient.destroy_all
# Cocktail.destroy_all
# Dose.destroy_all


puts "Creating data"
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
url_serialized = open(url).read
ingredients = JSON.parse(url_serialized)
array_ingredients = ingredients["drinks"]
array_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

Cocktail.create(name: "Mojito")
Cocktail.create(name: "Gin Fiz")
Cocktail.create(name: "Pina Colada")
Cocktail.create(name: "Sex on the beach")
Cocktail.create(name: "Tequila Sunrise")

puts "Done"
