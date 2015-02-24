# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create(email: "martin@lewagon.org", 
  password: "testtest", 
  password_confirmation: "testtest")

10.times do 
  Flat.create(name: Faker::Company.name, 
  description: Faker::Lorem.paragraph(4), 
  city: Faker::Address.city, 
  address: Faker::Address.street_address, 
  owner: u)
end