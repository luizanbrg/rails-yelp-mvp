# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "21232122", category: "chinese"}
jardim = {name: "Jardim", address: "10 Avenue des Champs Elysees, Paris 75000", phone_number: "08232122", category: "belgian"}
paul_bocuse = {name: "Paul Bocuse", address: "17 Calgary St, London E2 7JE", phone_number: "30237022", category: "french"}
mammamia = {name: "Mamma Mia", address: "Via Ferrata, Roma 2006", phone_number: "19231721", category: "italian"}
tsubaru = {name: "Tsubaru", address: "Mario Kart Place, Tokyo 9921", phone_number: "03906029", category: "japanese"}

[dishoom, jardim, paul_bocuse, mammamia, tsubaru].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
