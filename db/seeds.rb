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


Shelter.destroy_all
shelter = Shelter.create(name: "Cachorro", description: "awesome doggos", address: "Lisbon")
Shelter.create(name: "Cani&Gatti", description: "Smart and cute", address: "Brescia")
Shelter.create(name: "Hauskatze", description: "Fluffy but evilish", address: "Leipzig")
Shelter.create(name: "Pets4Life", description: "simply worth it", address: "Manchester")
Shelter.create(name: "Chat Noir", description: "don't pet them", address: "Paris")
Shelter.create(name: "Municipal Shelter", description: "come and choose", address: "Dublin")

User.destroy_all
user = User.create(name: "Ana", username: "ana", email: "ana@gmail.com", password: "123456", password_confirmation: "123456")
user2 = User.create(name: "Lucia", username: "Lucia", email: "lucia@gmail.com", password: "123456", password_confirmation: "123456")


Pet.create!(name: "Tom", species: "cat", shelter: shelter, user: user, food_level: 100, satisfaction: 100, boredom: 0 )


Chatroom.destroy_all
Chatroom.create(name: "general")
room2 = Chatroom.create(name: "cats")
Chatroom.create(name: "dogs")

Message.create!(content: "Hey! I found a cat, help me !", chatroom: room2, user: user)
Message.create!(content: "Hey! I can help you!", chatroom: room2, user: user2)

Item.destroy_all
Item.create!(name: "A cheap bag of wet food", price: 0, description: " Sometimes we can't afford better meals but we still want to sustain our loved ones.", category: "food")
Item.create!(name: "Canned food", price: 5, description: " Meat's the need of your pet!.", category: "food")
Item.create!(name: "Commercial raw pet food", price: 10, description: " Feed the hunter that lies within your adorable friend, as nature intended", category: "food")

Item.create!(name: "A tennis ball", price: 0, description: " Found on the street.. Looks like new..", category: "toy")
Item.create!(name: "A small peluche", price: 5, description: " With it, the cuteness of your pet will double, guaranteed", category: "toy")
Item.create!(name: "Puzzle feeder", price: 10, description: " Make them smarter!", category: "toy")

Item.create!(name: "One aspirin", price: 0, description: " And the pain goes away!", category: "medical")
Item.create!(name: "A vaccination", price: 5, description: " For stronger maladies", category: "medical")
Item.create!(name: "A complete health care treatment plan", price: 10, description: " It's not a critical situation, but I want the best for my beloved", category: "medical")
