# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

  Sushishop = {name: "Sushishop", address: "7 Boundary St, London E2 7JE", phone_number: "0128383893", category:"japanese"}
  Pizzapino =  {name: "Pizzapino", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0127728493", category:"italian"}
  Pekinexpress =  {name: "Pekinexpress", address: "34 rue gaudelet", phone_number: "0134728487", category:"chinese"}
  Brux =  {name: "Brux", address: "54 av de choisy", phone_number: "0199928493", category:"belgian" }
  Louis14 =  {name: "Louis14", address: "1 rue de la paix", phone_number: "0134728493", category:"french"}

[Sushishop, Pizzapino, Pekinexpress, Brux, Louis14 ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
