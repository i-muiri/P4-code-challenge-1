# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "create deliciousness"

10.times do
    Pizza4.create(
      name: Faker::Food.dish,
      ingredients: Faker::Food.ingredient
    )
  end
  # Create 5 restaurants
10.times do
    restaurant = Restaurant.create(
      name: Faker::Restaurant.name,
      address: Faker::Address.full_address
    )
 # Add random pizzas to the restaurant with random prices between 1 and 30
 Pizza4.all.sample(5).each do |pizza|
    restaurant_pizzas = RestaurantPizza.create(
      price: rand(1..30),
      restaurant_id: restaurant.id,
      pizza4_id: pizza.id
    )
end
end


puts "we done"






