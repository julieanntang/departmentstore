# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
Department.destroy_all
Item.destroy_all

# 10.times do
#   x = Faker::Verb.simple_present
#   y = Faker::Verb.ing_form
#   z = Faker::Verb.base
#   s = Department.create(name: "#{x} #{y} #{z}")
#   4.times do
#     s.items.create(name: Faker::Verb.simple_present)
#   end
# end
# puts "seeded #{Department.all.size} Departments"
# puts "first department name: #{Department.first.name}"
# puts "seeded #{Item.all.size} Items"
# puts "first item name: #{Department.first.items.first.name}"


shoes = Department.create(name: "Shoes")
toys = Department.create(name: "Toys")
gardening = Department.create(name: "Gardening")

shoes.items.create(name: "ultraboosts")
shoes.items.create(name: "air force 1s")

Item.create(name: "legos", department_id: toys.id)
Item.create(name: "barbie", department_id: toys.id)
Item.create(name: "stuffed animal", department_id: toys.id)

Item.create(name: "hoe", department_id: gardening.id)
Item.create(name: "hose", department_id: gardening.id)
Item.create(name: "rake", department_id: gardening.id)

