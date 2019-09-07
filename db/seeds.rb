# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  adventure = Adventure.create(
    name: Faker::Nation.capital_city
  )

  10.times do
    address = Address.create(
      long: Faker::Address.longitude,
      lat: Faker::Address.latitude
    )

  10.times do
    place = Place.create(
      name: Faker::Restaurant.name,
      adventure_id: adventure.id,
      address_id: address.id
    )
  end
  end

  end



puts "Data Seeded."

puts "Data Seeded."
