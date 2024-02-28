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

daisy_file = URI.open("https://images.unsplash.com/photo-1601758124277-f0086d5ab050?q=80&w=2110&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
daisy = Pet.new(name: "Daisy", species: "dog", description: "The dog is a domesticated descendant of the wolf.", address: "Kraepelinstr. 41, 80804 München", daily_pricing: 100, user: User.all.sample)
daisy.photos.attach(io: daisy_file, filename: "nes1.png", content_type: "image/png")
daisy.save

angel_file = URI.open("https://images.unsplash.com/photo-1583511655826-05700d52f4d9?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
angel = Pet.new(name: "Angel", species: "dog", description: "The dog is a domesticated descendant of the wolf.", address: "Parzivalstr. 21, 80804 München", daily_pricing: 100, user: User.all.sample)
angel.photos.attach(io: angel_file, filename: "nes2.png", content_type: "image/png")
angel.save

snow_white_file = URI.open("https://images.unsplash.com/photo-1536187422607-7d9bfde01640?q=80&w=2012&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
snow_white = Pet.new(name: "Snow white", species: "dog", description: "The dog is a domesticated descendant of the wolf.", address: "Karl-Theodor-Straße 62, 80803 München", daily_pricing: 100, user: User.all.sample)
snow_white.photos.attach(io: snow_white_file, filename: "nes3.png", content_type: "image/png")
snow_white.save

chapsiu_file = URI.open("https://images.unsplash.com/photo-1548802673-380ab8ebc7b7?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
chapsiu = Pet.new(name: "Chapsiu", species: "cat", description: "Best cat ever", address: "St.-Ingbert-Straße 1, 81541 München-Ramersdorf-Perlach", daily_pricing: 17, user: User.all.sample)
chapsiu.photos.attach(io: chapsiu_file, filename: "nes4.png", content_type: "image/png")
chapsiu.save

diamond_file = URI.open("https://images.unsplash.com/photo-1589883661923-6476cb0ae9f2?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
diamond = Pet.new(name: "Diamond", species: "cat", description: "Best cat ever", address: "Balanstraße 63, 81541 München", daily_pricing: 17, user: User.all.sample)
diamond.photos.attach(io: diamond_file, filename: "nes5.png", content_type: "image/png")
diamond.save

sugar_file = URI.open("https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?q=80&w=2060&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
sugar = Pet.new(name: "Sugar", species: "cat", description: "Best cat ever", address: "Berg-am-Laim-Straße 64, 81673 München", daily_pricing: 17, user: User.all.sample)
sugar.photos.attach(io: sugar_file, filename: "nes6.png", content_type: "image/png")
sugar.save

rex_file = URI.open("https://images.unsplash.com/photo-1520366498724-709889c0c685?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
rex = Pet.new(name: "Rex", species: "fish", description: "Super cute", address: "Rosenheimer Str. 145E, 81671 München-Berg am Laim", daily_pricing: 70, user: User.all.sample)
rex.photos.attach(io: rex_file, filename: "nes7.png", content_type: "image/png")
rex.save

jelly_file = URI.open("https://plus.unsplash.com/premium_photo-1664304884562-22dba9aaa578?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
jelly = Pet.new(name: "Jelly", species: "fish", description: "Super cute", address: "Gravelottestraße 8, 81667 München-Au-Haidhausen", daily_pricing: 70, user: User.all.sample)
jelly.photos.attach(io: jelly_file, filename: "nes8.png", content_type: "image/png")
jelly.save

bunny_file = URI.open("https://plus.unsplash.com/premium_photo-1667873584007-90b5880c4cd2?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
bunny = Pet.new(name: "Bunny", species: "capybara", description: "I love Bunny!", address: "Balanstraße 49, 81669 München", daily_pricing: 123, user: User.all.sample)
bunny.photos.attach(io: bunny_file, filename: "nes9.png", content_type: "image/png")
bunny.save

biggy_file = URI.open("https://plus.unsplash.com/premium_photo-1667873584119-6a9d4376f42d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
biggy = Pet.new(name: "Biggy", species: "capybara", description: "Best capybara ever!!", address: "Hanne-Hiob-Straße 6, 81671 München-Berg am Laim", daily_pricing: 123,user: User.all.sample)
biggy.photos.attach(io: biggy_file, filename: "nes10.png", content_type: "image/png")
biggy.save

brownie_file = URI.open("https://images.unsplash.com/photo-1560951022-00b231707a12?q=80&w=2024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
brownie = Pet.new(name: "Brownie", species: "hedgehog", description: "My best buddy ever", address: "Rosenheimer Str. 113, 81667 München", daily_pricing: 70, user: User.all.sample)
brownie.photos.attach(io: brownie_file, filename: "nes11.png", content_type: "image/png")
brownie.save

bobby_file = URI.open("https://images.unsplash.com/photo-1458410489211-ba19aa2f2902?q=80&w=2092&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
bobby = Pet.new(name: "Bobby", species: "bird", description: "I love Bobby!", address: "Kirchenstraße 17 C - D, 81675 München-Au-Haidhausen", daily_pricing: 123, user: User.all.sample)
bobby.photos.attach(io: bobby_file, filename: "nes12.png", content_type: "image/png")
bobby.save
