require "open-uri"

Shelter.destroy_all
lisbon_shelter = Shelter.create(name: "Cachorro", description: "Awesome doggos", address: "Lisbon")
brescia_shelter = Shelter.create(name: "Cani&Gatti", description: "Smart and cute", address: "Brescia")
leipzig_shelter = Shelter.create(name: "Hauskatze", description: "Fluffy but evilish", address: "Leipzig")
manchester_shelter = Shelter.create(name: "Pets4Life", description: "Simply worth it", address: "Manchester")
paris_shelter = Shelter.create(name: "Chat Noir", description: "Fluffy and lovely", address: "Paris, rue las cases")
paris1_shelter = Shelter.create(name: "Quatre Pattes", description: "Help them to feel happier", address: "Paris, rue grétry")
paris2_shelter = Shelter.create(name: "Consiel Nat", description: "Refuge for animals", address: "Paris, rue ledion")
paris3_shelter = Shelter.create(name: "Pigeonnier Javel", description: "Adoption & care", address: "Paris, avenue du géneral dodds")
dublin_shelter = Shelter.create(name: "Municipal Shelter", description: "Come and choose", address: "Dublin")


paris1_image = URI.open("https://www.hillspet.com/content/dam/cp-sites/hills/hills-pet/en_us/exported/pet-care/Skyword/images/basset-hound-sleeps-on-sleeping-tabby-cat_308513_ref.png")
paris1_shelter.photo.attach(io: paris1_image, filename: "shelter.png", content_type: "image/png")
paris1_shelter.save


paris2_image = URI.open("https://hips.hearstapps.com/hmg-prod/images/here-come-the-girls-royalty-free-image-1637143818.jpg")
paris2_shelter.photo.attach(io: paris2_image, filename: "shelter.png", content_type: "image/png")
paris2_shelter.save

paris3_image = URI.open("https://assets-au-01.kc-usercontent.com/633d61f6-9767-024d-b5a4-f803b9cc307b/004601fa-582a-4de6-b521-c29c87004ddc/article-the-pros-and-cons-of-having-cats-and-dogs.jpg")
paris3_shelter.photo.attach(io: paris3_image, filename: "shelter.png", content_type: "image/png")
paris3_shelter.save

lisbonne_image = URI.open("https://www.americanhumane.org/app/uploads/2016/08/shutterstock_162633491.jpg")
lisbon_shelter.photo.attach(io: lisbonne_image, filename: "shelter.png", content_type: "image/png")
lisbon_shelter.save

brescia_image = URI.open("https://closerpets.co.uk/cdn/shop/articles/andrew-s-ouo1hbizWwo-unsplash.jpg?v=1653055595")
brescia_shelter.photo.attach(io: brescia_image, filename: "shelter.png", content_type: "image/png")
brescia_shelter.save

leipzig_image = URI.open("https://stpaulpet.com/wp-content/uploads/dog-facts-cat-facts.jpg")
leipzig_shelter.photo.attach(io: leipzig_image, filename: "shelter.png", content_type: "image/png")
leipzig_shelter.save

manchester_image = URI.open("https://cdn.britannica.com/86/166986-050-4CEFE5DE/cute-kitten-and-puppy-outdoors-in-grass.jpg")
manchester_shelter.photo.attach(io: manchester_image, filename: "shelter.png", content_type: "image/png")
manchester_shelter.save

paris_image = URI.open("https://i0.wp.com/sitn.hms.harvard.edu/wp-content/uploads/2017/12/puppykitty.jpg?fit=720%2C405&ssl=1")
paris_shelter.photo.attach(io: paris_image, filename: "shelter.png", content_type: "image/png")
paris_shelter.save

dublin_image = URI.open("https://images.ctfassets.net/cnu0m8re1exe/34AKiw7KQd6XdNlQbwf0Dd/1bd0454ed9e67e9041f528991bed2d7b/shutterstock_2164898457.jpg?fm=jpg&fl=progressive&w=660&h=433&fit=fill")
dublin_shelter.photo.attach(io: dublin_image, filename: "shelter.png", content_type: "image/png")
dublin_shelter.save

User.destroy_all
user = User.create(name: "Ana", username: "ana", email: "ana@gmail.com", password: "123456", password_confirmation: "123456")
user2 = User.create(name: "Lucia", username: "Lucia", email: "lucia@gmail.com", password: "123456", password_confirmation: "123456")
user3 = User.create(name: "John", username: "John", email: "john@gmail.com", password: "123456", password_confirmation: "123456")
user4 = User.create(name: "Jane", username: "Jane", email: "jane@gmail.com", password: "123456", password_confirmation: "123456")
user5 = User.create(name: "Michael", username: "Michael", email: "michael@gmail.com", password: "123456", password_confirmation: "123456")
user6 = User.create(name: "Sarah", username: "Sarah", email: "sarah@gmail.com", password: "123456", password_confirmation: "123456")
user7 = User.create(name: "Emma", username: "Emma", email: "emma@gmail.com", password: "123456", password_confirmation: "123456")
user8 = User.create(name: "Carlos", username: "Carlos", email: "carlos@gmail.com", password: "123456", password_confirmation: "123456")
user9 = User.create(name: "Maria", username: "Maria", email: "maria@gmail.com", password: "123456", password_confirmation: "123456")
user10 = User.create(name: "Luis", username: "Luis", email: "luis@gmail.com", password: "123456", password_confirmation: "123456")

Pet.destroy_all
pet1 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user, food_level: 100, satisfaction: 100, boredom: 0 )
pet2 = Pet.create!(name: "Garfield", species: "cat", shelter: lisbon_shelter, user: user2, food_level: 100, satisfaction: 100, boredom: 0 )
pet3 = Pet.create!(name: "Otto", species: "dog", shelter: lisbon_shelter, user: user3, food_level: 100, satisfaction: 100, boredom: 0 )
pet4 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user4, food_level: 100, satisfaction: 100, boredom: 0 )
pet5 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user5, food_level: 100, satisfaction: 100, boredom: 0 )
pet6 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user6, food_level: 100, satisfaction: 100, boredom: 0 )
pet7 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user7, food_level: 100, satisfaction: 100, boredom: 0 )
pet8 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user8, food_level: 100, satisfaction: 100, boredom: 0 )
pet9 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user9, food_level: 100, satisfaction: 100, boredom: 0 )
pet10 = Pet.create!(name: "Tom", species: "cat", shelter: lisbon_shelter, user: user10, food_level: 100, satisfaction: 100, boredom: 0 )

Chatroom.destroy_all
Chatroom.create(name: "general😎")
room2 = Chatroom.create(name: "cats😺")
Chatroom.create(name: "dogs🐶")

Message.create!(content: "Hey! I found a cat, help me !", chatroom: room2, user: user)
Message.create!(content: "Hey! I can help you!", chatroom: room2, user: user2)


Item.destroy_all
item1 = Item.create!(name: "A cheap bag of wet food", price: 0, description: " Sometimes we can't afford better meals but we still want to take care of them", category: "food")
item2 = Item.create!(name: "Canned food", price: 5, description: " Meat's the need of your pet! Make sure to treat them well!", category: "food")
item3 = Item.create!(name: "Commercial raw pet food", price: 10, description: " Feed the hunter that lies within your adorable friend, as nature intended.", category: "food")

item4 = Item.create!(name: "A tennis ball", price: 0, description: " Found on the street.. Looks like new..", category: "toy")
item5 = Item.create!(name: "A small peluche", price: 5, description: " With it, the cuteness of your pet will double, guaranteed.", category: "toy")
item6 = Item.create!(name: "Puzzle feeder", price: 10, description: " Train your pets and make them smarter!", category: "toy")

item7 = Item.create!(name: "One aspirin", price: 0, description: " And the pain goes away! Back to playing!", category: "medical")
item8 = Item.create!(name: "A vaccination", price: 5, description: " To recover faster from stronger maladies.", category: "medical")
item9 = Item.create!(name: "Full pet healthcare plan", price: 10, description: " It's not a critical situation, but I want the best for my beloved.", category: "medical")

Order.destroy_all
Order.create!(pet: pet2, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet2, item: item5, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet2, item: item2, state: 'paid', amount_cents: 500, euro: 5)

Order.create!(pet: pet3, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet3, item: item8, state: 'paid', amount_cents: 500, euro: 5)

Order.create!(pet: pet4, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet4, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet4, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet4, item: item9, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet4, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet4, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet4, item: item3, state: 'paid', amount_cents: 1000, euro: 10)

Order.create!(pet: pet5, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet5, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet5, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet5, item: item2, state: 'paid', amount_cents: 500, euro: 5)


Order.create!(pet: pet6, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet6, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet6, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet6, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet6, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet6, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet6, item: item6, state: 'paid', amount_cents: 1000, euro: 10)

Order.create!(pet: pet7, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet7, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet7, item: item2, state: 'paid', amount_cents: 500, euro: 5)

Order.create!(pet: pet8, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet8, item: item2, state: 'paid', amount_cents: 500, euro: 5)

Order.create!(pet: pet9, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet9, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet9, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet9, item: item3, state: 'paid', amount_cents: 1000, euro: 10)

Order.create!(pet: pet10, item: item2, state: 'paid', amount_cents: 500, euro: 5)
Order.create!(pet: pet10, item: item3, state: 'paid', amount_cents: 1000, euro: 10)
Order.create!(pet: pet10, item: item3, state: 'paid', amount_cents: 1000, euro: 10)

Order.create!(pet: pet7, item: item3, state: 'paid', amount_cents: 1000, euro: 10)

Order.create!(pet: pet1, item: item1, state: 'paid', amount_cents: 0, euro: 0, created_at: "Mon, 1 Jan 2024 13:36:36.856149000 UTC +00:00")
Order.create!(pet: pet1, item: item4, state: 'paid', amount_cents: 0, euro: 0, created_at: "Fri, 1 Dec 2023 13:36:36.856149000 UTC +00:00")
Order.create!(pet: pet1, item: item7, state: 'paid', amount_cents: 0, euro: 0, created_at: "Wed, 14 Feb 2024 13:36:36.856149000 UTC +00:00")
