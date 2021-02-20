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

user_1 = User.create!(
  first_name: "Chris",
  last_name: "Bellairs",
  email: "c.m.bellairs@gmail.com",
  password: "password",
  address: "West Street, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820019/Nelson_axxwdb.jpg')

dog_1 = Dog.new(
  name: "Nelson",
  breed: "Rhodesian Ridgeback",
  biography: "The best boy you'll ever have the pleasure of meeting. Loves long walks, people and other doggo's.",
  age: 3,
  good_with_children: true,
  size: 8,
  walk: 7,
  energy: 5,
  friendly: 10,
  user: user_1,
)
dog_1.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_1.save!



user_2 = User.create!(
  first_name: "Matt",
  last_name: "Woods",
  email: "woodsmj17@gmail.com",
  password: "password",
  address: "Park Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820019/Oldenglish_djsfss.jpg')

dog_2 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Old English Sheepdog",
  biography: "Loves long country walks and thinks he is a sheep. Even better he loves a good cuddle on the sofa at the end of that walk. Fair warning he'll take up most of the sofa. ",
  age: (1..15).to_a.sample,
  good_with_children: true,
  size: 8,
  walk: 8,
  energy: 6,
  friendly: 9,
  user: user_2
)
dog_2.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_2.save!



user_3 = User.create!(
  first_name: "Felicity",
  last_name: "Towler",
  email: "felicity@scaldendfarm.com",
  password: "password",
  address: "Main Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820014/Cockerpoo_yjyynp.jpg')

dog_3 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Cockerpoo",
  biography: "Very loving sociable boy. Loves a fuss but can be left by himself. Loves to play fetch with a ball. Is house trained. Good on the lead. Loves people (especially kids) and has no issues with other dogs or animals. Is aquite a big boy and does need plenty of exercise.",
  age: 6,
  good_with_children: true,
  size: 3,
  walk: 5,
  energy: 7,
  friendly: 8,
  user: user_3
)
dog_3.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_3.save!



user_4 = User.create!(
  first_name: "Freddie",
  last_name: "Fryer",
  email: "freddiefryercode@gmail.com",
  password: "password",
  address: "New Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820009/Basset_dql9nu.jpg')

dog_4 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Basset Hound",
  biography: "He is very loving and like company and love very playful and mischievous but a beautiful boy will cry if feels lonely",
  age: 7,
  good_with_children: true,
  size: 4,
  walk: 2,
  energy: 3,
  friendly: 7,
  user: user_4
)
dog_4.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_4.save!



user_5 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Broadway, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820020/Sausage_ndkiwh.jpg')

dog_5 = Dog.new(
  name: "Harley",
  breed: "Sausage Dog",
  biography: "Harley is a cute little thing that loves cuddles and licks! She is a keen eater and is often found around your ankles! She loves people, dogs and cats and is friendly. She loves belly taps, scratches and ear rubs.",
  age: 4,
  good_with_children: true,
  size: 2,
  walk: 2,
  energy: 5,
  friendly: 10,
  user: user_5
)
dog_5.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_5.save!



user_6 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "The Grove, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820016/Kingcharles_jaoocu.jpg')

dog_6 = Dog.new(
  name: "Heidi",
  breed: "King Charles Spaniel",
  biography: "Heidi is a rescue dog and I've had her for 3 years. What makes Heidi happy is she loves her walks and playing with toys. She's an active, obedient and affectionate little dog.",
  age: (1..15).to_a.sample,
  good_with_children: true,
  size: (1..10).to_a.sample,
  walk: (1..10).to_a.sample,
  energy: (1..10).to_a.sample,
  friendly: (1..10).to_a.sample,
  user: user_6
)
dog_6.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_6.save!



user_7 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Victoria Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820012/Labradoodle_dzxsan.jpg')

dog_7 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Labradoodle",
  biography: "Playing with toys, going on walks, meeting people, cuddles",
  age: 2,
  good_with_children: true,
  size: 5,
  walk: 7,
  energy: 7,
  friendly: 9,
  user: user_7
)
dog_7.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_7.save!



user_8 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Grove Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820019/Staff_uikznv.jpg')

dog_8 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Staffy",
  biography: "Billy is a typical staffy pup , loves company , kids , treats and walks , a lovely lad and is well socialized with other dogs",
  age: 1,
  good_with_children: true,
  size: 3,
  walk: 5,
  energy: 7,
  friendly: 8,
  user: user_8
)
dog_8.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_8.save!



user_9 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Grange Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820016/Chiwawa_hki7kx.jpg')

dog_9 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Chiwawa",
  biography: "She is a lap dog and loves cuddles and will do anything for a treat ! She enjoys walks and meeting other dogs",
  age: 2,
  good_with_children: true,
  size: 1,
  walk: 1,
  energy: 5,
  friendly: 7,
  user: user_9
)
dog_9.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_9.save!



user_10 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Alexander Road, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820010/Greatdane_mjioy1.jpg')

dog_10 = Dog.new(
  name: "Ellie",
  breed: "Great Dane",
  biography: "Hi, I'm Ellie. I've got a big heart with lots of love to give in exchange for walkies and treats and fuss. My mummy spent years without a doggie of her own so she wants to give other pup lovers a chance to give me cuddles and smooches - suits me just fine!",
  age: 7,
  good_with_children: true,
  size: 10,
  walk: 8,
  energy: 5,
  friendly: 8,
  user: user_10
)
dog_10.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_10.save!



user_11 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Queensway, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820019/EnglishBully_mkgcqe.jpg')

dog_11 = Dog.new(
  name: "Lily",
  breed: "English Bulldog",
  biography: "Lily Is a active bulldog and loves everyone and is great with kids and enjoys a walk. . Lily is very sociable and enjoys being around lots of people as then she gets more attention. She is a right character. If you would like to be a friend to Lily who loves company, craves attention and is great fun do get in touch.",
  age: 4,
  good_with_children: true,
  size: 5,
  walk: 1,
  energy: 3,
  friendly: 8,
  user: user_11
)
dog_11.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_11.save!



user_12 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: "password",
  address: "Park Avenue, London",
  terms_and_conditions: true
)

image_data = URI.open('https://res.cloudinary.com/drrp7b8nl/image/upload/v1613820016/Maltese_r02lri.jpg')

dog_12 = Dog.new(
  name: Faker::Creature::Dog.name,
  breed: "Maltese",
  biography: "Phoebe loves other dogs and children and loves to play with them. She is a very gentle and loving dog and has a calm nature. She loves her belly rubbed and a lot of sleep. She loves a walk but doesn't like the rain. If she gets wet she enjoys being snuggled in a towel to get dry. She get's a little bit scared if humans tower over her but is fine if you crouch down to her. Phoebe would love it if you have another friendly dog for her to play with. She doesn't moult and is a hypoallergenic breed. She is a very happy little dog and enjoys life.",
  age: 6,
  good_with_children: true,
  size: 1,
  walk: 1,
  energy: 7,
  friendly: 10,
  user: user_11
)
dog_12.photo.attach(io: image_data, filename: 'image.jpg', content_type: 'image/jpg')
dog_12.save!








# 10.times do
#   Booking.create(
#     date: Faker::Date.between(from: '2021-04-23', to: '2022-09-25'),
#     user: users.sample,
#     dog: dogs.sample
#   )
# end

# puts "Created #{Booking.all.count} bookings."
