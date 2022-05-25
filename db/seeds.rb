# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroy db of granies...'

User.destroy_all

#Create Granny seeds

user1 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1948,2,3), granny:true, description:"Super awsome, burlesque granny!", price: 19.4 )
user2 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1944,2,3), granny:true, description:"Go clubbing with this super cool granny", price: 20.5)
user3 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1954,2,3), granny:true, description:"Have a great ride with this taxi driver granny" , price: 34.00)
user4 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1956,2,3), granny:true, description:"Having doubts about coding? Ask nana Luisa, our tech lead granny!", price: 54.45)
user5 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1955,2,3), granny:true, description:"Bored to death? Have a ball with drag queen granny Strawberry Shortcake", price: 56.57)
user6 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date:Date.new(1950,2,3), granny:true, description:"It's makeover time with stylist granny!", price: 15.00)

# Create User seeds
user7 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1984,12,15), granny:false)
user8 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Paris', birth_date: Date.new(1978,06,10), granny:false)
user9 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Berlin', birth_date:Date.new(1990,12,15), granny:false)
user10 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Madrid', birth_date:Date.new(1994,07,30), granny:false)

users_now = [user1, user2, user3, user4, user5, user7, user8, user9, user10]


puts "Created #{users_now.count} new users"
