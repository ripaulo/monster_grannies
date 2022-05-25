# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"


puts 'Destroy db of granies...'

User.destroy_all

#Create Granny seeds

user1 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1948,2,3), granny:true, description:"Super awsome, burlesque granny!", price: 19.4 )
file1 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1653488572/grannie%20seeds/hi-everyone-this-is-my-grandmother-84-years-old-2022-03-05-05-19-47-utc_nuqznh.jpg')
user1.photo.attach(io: file1, filename: 'file1.jpg', content_type: 'image/jpg')

user2 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1944,2,3), granny:true, description:"Go clubbing with this super cool granny", price: 20.5)
file2 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1653488319/grannie%20seeds/funny-portraits-with-old-grandmother-2022-02-03-11-46-06-utc_ydbab2.jpg')
user2.photo.attach(io: file2, filename: 'file2.jpg', content_type: 'image/jpg')

user3 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1954,2,3), granny:true, description:"Have a great ride with this taxi driver granny" , price: 34.00)
file3 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1653488311/grannie%20seeds/funny-portraits-with-old-grandmother-2022-02-07-01-58-11-utc_y7hlq3.jpg')
user3.photo.attach(io: file3, filename: 'file3.jpg', content_type: 'image/jpg')

user4 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1956,2,3), granny:true, description:"Having doubts about coding? Ask nana Luisa, our tech lead granny!", price: 54.45)
file4 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1653488306/grannie%20seeds/funny-portraits-with-old-grandmother-2022-02-06-07-48-32-utc_dd0pli.jpg')
user4.photo.attach(io: file4, filename: 'file4.jpg', content_type: 'image/jpg')

user5 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1955,2,3), granny:true, description:"Bored to death? Have a ball with drag queen granny Strawberry Shortcake", price: 56.57)
file5 = URI.open('https://res.cloudinary.com/monstergrannies/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1653488300/grannie%20seeds/funny-portraits-with-old-grandmother-2022-02-06-07-37-00-utc_komwas.jpg')
user5.photo.attach(io: file5, filename: 'file5.jpg', content_type: 'image/jpg')

user6 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date:Date.new(1950,2,3), granny:true, description:"It's makeover time with stylist granny!", price: 15.00)
file6 = URI.open('https://img.freepik.com/fotos-gratis/mulher-idosa-engracada-acao-funky-sorriso-feliz-sorridente-mulher-idosa-natural-conceitos-pessoas-idosas_321377-610.jpg')
user6.photo.attach(io: file6, filename: 'file6.jpg', content_type: 'image/jpg')

# Create User seeds
user7 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Lisboa', birth_date: Date.new(1984,12,15), granny:false)
user8 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Paris', birth_date: Date.new(1978,06,10), granny:false)
user9 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Berlin', birth_date:Date.new(1990,12,15), granny:false)
user10 = User.create(email: Faker::Internet.email, password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: 'Madrid', birth_date:Date.new(1994,07,30), granny:false)

users_now = [user1, user2, user3, user4, user5, user7, user8, user9, user10]

puts "Created #{users_now.count} new users"
