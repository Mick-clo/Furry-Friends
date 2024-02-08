# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
user = User.create(name: "Ana", username: "ana", email: "ana@gmail.com", password: "123456", password_confirmation: "123456")
shelter = Shelter.create(name: "doggos", description: "awesome doggos", address: "Lisbon")
Pet.create!(name: "Tom", species: "cat", shelter_id: shelter.id, user_id: user.id, food_level: 100, satisfaction: 100, boredom: 0 )
