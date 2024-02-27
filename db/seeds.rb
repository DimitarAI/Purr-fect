# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(first_name: "Ghadeer", last_name: "Kherullah", email: "ghadeer@mail.com", password: "123123")
User.create(first_name: "Simon", last_name: "Pentzien", email: "simon@mail.com", password: "123123")
User.create(first_name: "Dimitar", last_name: "Petrov", email: "dimitar@mail.com", password: "123123")
User.create(first_name: "Paulina", last_name: "Kisielewska", email: "paulina1@mail.com", password: "123123")
User.create(first_name: "Daisy", last_name: "Blabla", email: "daisy@mail.com", password: "123123")

Pet.create(name: "Daisy", species: "dog", description: "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from extinct gray wolves, and the gray wolf is the dog's closest living relative.", address: "Thereswiese", daily_pricing: 100, user_id: 1)
Pet.create(name: "Chapsiu", species: "cat", description: "Best cat ever", address: "Thereswiese", daily_pricing: 17, user_id: 1)
Pet.create(name: "Rex", species: "fish", description: "Super cute", address: "Thereswiese", daily_pricing: 70, user_id: 2)
Pet.create(name: "Bunny", species: "capybara", description: "I love Bunny!", address: "Thereswiese", daily_pricing: 123, user_id: 4)
Pet.create(name: "Angel", species: "dog", description: "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from extinct gray wolves, and the gray wolf is the dog's closest living relative.", address: "Thereswiese", daily_pricing: 100, user_id: 1)
Pet.create(name: "Diamond", species: "cat", description: "Best cat ever", address: "Thereswiese", daily_pricing: 17, user_id: 5)
Pet.create(name: "Brownie", species: "hedgehog", description: "My best buddy ever", address: "Thereswiese", daily_pricing: 70, user_id: 2)
Pet.create(name: "Biggy", species: "capybara", description: "Best capybara ever!!", address: "Thereswiese", daily_pricing: 123, user_id: 3)
Pet.create(name: "Snow white", species: "dog", description: "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from extinct gray wolves, and the gray wolf is the dog's closest living relative.", address: "Thereswiese", daily_pricing: 100, user_id: 1)
Pet.create(name: "Sugar", species: "cat", description: "Best cat ever", address: "Thereswiese", daily_pricing: 17, user_id: 1)
Pet.create(name: "Jelly", species: "fish", description: "Super cute", address: "Thereswiese", daily_pricing: 70, user_id: 1)
Pet.create(name: "Bobby", species: "bird", description: "I love Bobby!", address: "Thereswiese", daily_pricing: 123, user_id: 1)
