# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️


puts "Creating restaurants..."
category = [ "chinese", "italian", "japanese", "french", "belgian" ].sample
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0123456789", category: category)
puts "Created Dishoom"
category = [ "chinese", "italian", "japanese", "french", "belgian" ].sample
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0234526379", category: category)
puts "Created Pizza East"
category = [ "chinese", "italian", "japanese", "french", "belgian" ].sample
Restaurant.create!(name: "Burger Malin", address: "paris", phone_number: "1234567890", category: category)
puts "Created Burger Malin"
category = [ "chinese", "italian", "japanese", "french", "belgian" ].sample
Restaurant.create!(name: "Korean Barbecue", address: "rue du dragon paris", phone_number: "5432109876", category: category)
puts "Created Korean Barbecue"
category = [ "chinese", "italian", "japanese", "french", "belgian" ].sample
Restaurant.create!(name: "Palais Imperial", address: "3 rue de Londres", phone_number: "0660792708", category: category)
puts "Created Palais Imperial"
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
