# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "43587402", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "53748502", category: "italian" }
chez_jeannot = { name: "chez_jeannot", address: "vallon des auffes", phone_number: "04 91 12 13 14", category: "italian" }
chez_michel = { name: "chez_michel", address: "rue des catalans", phone_number: "04 91 14 15 16", category: "french" }
la_gentianne = { name: "la_gentianne", address: "cours julien", phone_number: "04 91 17 18 19", category: "french" }

[ dishoom, pizza_east, chez_jeannot, chez_michel, la_gentianne ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
