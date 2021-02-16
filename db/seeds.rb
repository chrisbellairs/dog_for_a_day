# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Booking.destroy_all
User.destroy_all
Dog.destroy_all
puts "database cleaned"

20.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    address: ['15, bartlett close','2 kings grove','32, Astbury Road', '50, Vectis Road', '136, Robinson Road','Scald End Farm, Mill Road, Thurliegh', '17, Ulundi Road, London'].sample,
    postcode: "TQ8 6GF"
  )
  
  image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613231666/keppgkui0p58gqxn2ufi.jpg')

  dog = Dog.new(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    biography: "Is a good boy/girl",
    age: (1..15).to_a.sample,
    good_with_children: true,
    size: (1..10).to_a.sample,
    walk: (1..10).to_a.sample,
    energy: (1..10).to_a.sample,
    friendly: (1..10).to_a.sample,
    user: user
  )
  dog.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
  dog.save!
end

puts "Created #{User.all.count} users."
puts "Created #{Dog.all.count} dogs."

users = User.all
dogs = Dog.all

10.times do
  Booking.create(
    date: Faker::Date.between(from: '2021-04-23', to: '2022-09-25'),
    user: users.sample,
    dog: dogs.sample
  )
end

puts "Created #{Booking.all.count} bookings."
