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
Pet.destroy_all

require "open-uri"

User.create(first_name: "Ghadeer", last_name: "Kherullah", email: "ghadeer@mail.com", password: "123123")
User.create(first_name: "Simon", last_name: "Pentzien", email: "simon@mail.com", password: "123123")
User.create(first_name: "Dimitar", last_name: "Petrov", email: "dimitar@mail.com", password: "123123")
User.create(first_name: "Paulina", last_name: "Kisielewska", email: "paulina1@mail.com", password: "123123")
User.create(first_name: "Daisy", last_name: "Blabla", email: "daisy@mail.com", password: "123123")

daisy_file = URI.open("https://unsplash.com/s/photos/dogs-canne-courser")
daisy = Pet.new(name: "Daisy", species: "dog", description: "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from extinct gray wolves, and the gray wolf is the dog's closest living relative.", address: "Kraepelinstr. 41, 80804 München", daily_pricing: 100, user_id: 1)
daisy.photo.attach(io: daisy_file, filename: "nes.png", content_type: "image/png")
daisy.save

angel_file = URI.open("https://unsplash.com/photos/white-and-brown-long-coated-small-dog-wearing-blue-and-white-polka-dot-shirt-Qb7D1xw28Co")
angel = Pet.new(name: "Angel", species: "dog", description: "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from extinct gray wolves, and the gray wolf is the dog's closest living relative.", address: "Parzivalstr. 21, 80804 München", daily_pricing: 100, user_id: 1)
angel.photo.attach(io: angel_file, filename: "nes.png", content_type: "image/png")
angel.save

snow_white_file = URI.open("https://unsplash.com/photos/close-up-photography-of-long-coated-white-dog-aFoc_XbIZ6k")
snow_white = Pet.new(name: "Snow white", species: "dog", description: "The dog is a domesticated descendant of the wolf. Also called the domestic dog, it is derived from extinct gray wolves, and the gray wolf is the dog's closest living relative.", address: "Karl-Theodor-Straße 62, 80803 München", daily_pricing: 100, user_id: 1)
snow_white.photo.attach(io: snow_white_file, filename: "nes.png", content_type: "image/png")
snow_white.save

chapsiu_file = URI.open("https://unsplash.com/photos/cat-sleeping-on-bed-pdALzg0yN-8")
chapsiu = Pet.new(name: "Chapsiu", species: "cat", description: "Best cat ever", address: "St.-Ingbert-Straße 1, 81541 München-Ramersdorf-Perlach", daily_pricing: 17, user_id: 1)
chapsiu.photo.attach(io: chapsiu_file, filename: "nes.png", content_type: "image/png")
chapsiu.save

diamond_file = URI.open("https://unsplash.com/photos/white-and-brown-cat-lying-on-brown-wooden-floor-46TvM-BVrRI")
diamond = Pet.new(name: "Diamond", species: "cat", description: "Best cat ever", address: "Balanstraße 63, 81541 München", daily_pricing: 17, user_id: 5)
diamond.photo.attach(io: diamond_file, filename: "nes.png", content_type: "image/png")
diamond.save

sugar_file = URI.open("https://unsplash.com/photos/white-cat-sleeps-under-white-comforter-uy5t-CJuIK4")
sugar = Pet.new(name: "Sugar", species: "cat", description: "Best cat ever", address: "Berg-am-Laim-Straße 64, 81673 München", daily_pricing: 17, user_id: 1)
sugar.photo.attach(io: sugar_file, filename: "nes.png", content_type: "image/png")
sugar.save

rex_file = URI.open("https://unsplash.com/photos/goldfish-in-fish-tank-URaZrRvKQqM")
rex = Pet.new(name: "Rex", species: "fish", description: "Super cute", address: "Rosenheimer Str. 145E, 81671 München-Berg am Laim", daily_pricing: 70, user_id: 2)
rex.photo.attach(io: rex_file, filename: "nes.png", content_type: "image/png")
rex.save

jelly_file = URI.open("https://unsplash.com/photos/a-woman-holding-a-goldfish-in-a-bowl-oO9CW20pkgM")
jelly = Pet.new(name: "Jelly", species: "fish", description: "Super cute", address: "Gravelottestraße 8, 81667 München-Au-Haidhausen", daily_pricing: 70, user_id: 1)
jelly.photo.attach(io: jelly_file, filename: "nes.png", content_type: "image/png")
jelly.save

bunny_file = URI.open("https://unsplash.com/photos/a-close-up-of-a-person-feeding-a-capybara-qRyx5zH_yWY")
bunny = Pet.new(name: "Bunny", species: "capybara", description: "I love Bunny!", address: "Balanstraße 49, 81669 München", daily_pricing: 123, user_id: 4)
bunny.photo.attach(io: bunny_file, filename: "nes.png", content_type: "image/png")
bunny.save

biggy_file = URI.open("https://unsplash.com/photos/a-close-up-of-a-capybara-in-a-bathtub-tLCc0aDK1Gg")
biggy = Pet.new(name: "Biggy", species: "capybara", description: "Best capybara ever!!", address: "Hanne-Hiob-Straße 6, 81671 München-Berg am Laim", daily_pricing: 123, user_id: 3)
biggy.photo.attach(io: biggy_file, filename: "nes.png", content_type: "image/png")
biggy.save

brownie_file = URI.open("https://unsplash.com/photos/white-and-brown-hedgehog-k_E7DpVgftw")
brownie = Pet.new(name: "Brownie", species: "hedgehog", description: "My best buddy ever", address: "Rosenheimer Str. 113, 81667 München", daily_pricing: 70, user_id: 2)
brownie.photo.attach(io: brownie_file, filename: "nes.png", content_type: "image/png")
brownie.save

bobby_file = URI.open("https://unsplash.com/photos/cockatiel-on-wire-bird-cage-yZTbN9-5fx4")
bobby = Pet.new(name: "Bobby", species: "bird", description: "I love Bobby!", address: "Kirchenstraße 17 C - D, 81675 München-Au-Haidhausen", daily_pricing: 123, user_id: 1)
bobby.photo.attach(io: bobby_file, filename: "nes.png", content_type: "image/png")
bobby.save
