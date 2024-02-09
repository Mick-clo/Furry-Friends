# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# User.destroy_all
User.create(name: "Ana", username: "ana", email: "ana@gmail.com", password: "123456", password_confirmation: "123456")



Shelter.create(name: "Cachorro", description: "awesome doggos", address: "Lisbon")
Shelter.create(name: "Cani&Gatti", description: "Smart and cute", address: "Brescia")
Shelter.create(name: "Hauskatze", description: "Fluffy but evilish", address: "Leipzig")
Shelter.create(name: "Pets4Life", description: "simply worth it", address: "Manchester")
Shelter.create(name: "Chat Noir", description: "don't pet them", address: "Paris")
Shelter.create(name: "Municipal Shelter", description: "come and choose", address: "Dublin")

Pet.create!(name: "Tom", species: "cat", shelter_id: 1, user_id: 4, food_level: 100, satisfaction: 100, boredom: 0 )
