# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ model: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sandal.destroy_all
sandal1 = Sandal.create(model: "Sandalia1", price: 2500, description: "Sandalia hecha a mano")
sandal2 = Sandal.create(model: "Sandalia2", price: 4500, description: "Sandalia hecha a mano")
sandal3 = Sandal.create(model: "Sandalia3", price: 3500, description: "Sandalia hecha a mano")
sandal4 = Sandal.create(model: "Sandalia4", price: 2570, description: "Sandalia hecha a mano")
sandal5 = Sandal.create(model: "Sandalia5", price: 2370, description: "Sandalia hecha a mano")
sandal6 = Sandal.create(model: "Sandalia6", price: 4000, description: "Sandalia hecha a mano")

puts "Total number of sandals: #{Sandal.all.count}"
puts "sandal models: #{Sandal.all.pluck("model")}"
puts "sandal1: #{sandal1.model} price: #{sandal1.price.round(2)}"
puts "sandal2: #{sandal2.model} price: #{sandal2.price.round(2)}"
puts "sandal3: #{sandal3.model} price: #{sandal3.price.round(2)}"
puts "sandal4: #{sandal4.model} price: #{sandal4.price.round(2)}"
puts "sandal5: #{sandal5.model} price: #{sandal5.price.round(2)}"
puts "sandal6: #{sandal6.model} price: #{sandal6.price.round(2)}"

Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"
