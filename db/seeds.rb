# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
    address: "1 Random Street",
    postcode: "TQ8 6GF"
  )

  Dog.create!(
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
