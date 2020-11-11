# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "+1-202-555-0131", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "+1-202-555-0110", category: "italian" }
shifu =  { name: "Shifu", address: "Shenzen", phone_number: "+1-202-555-0100", category: "chinese" }
gargantua =  { name: "Gargantua", address: "Anvers", phone_number: "+1-202-555-0107", category: "belgian" }
okinawa =  { name: "Okinawa", address: "Kyoto", phone_number: "+1-202-555-0122", category: "japanese" }

[ dishoom, pizza_east, shifu, gargantua, okinawa ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"