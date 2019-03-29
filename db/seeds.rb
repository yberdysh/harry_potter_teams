# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Character.destroy_all
Team.destroy_all
User.destroy_all
House.destroy_all
Position.destroy_all

jane = User.create(name: "Jane")
joe = User.create(name: "Joe")

Team.create(name: "Doggies", user: joe)
Team.create(name: "KittyKats", user: jane)

houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]

positions = ["Beater", "Seeker", "Chaser", "Keeper"]

houses.each do |house|
  House.create(name: house)
end

positions.each do |position|
  Position.create(name: position)
end

15.times do
  Character.create(name: Faker::Movies::HarryPotter.unique.character, house: House.all.sample, team: Team.all.sample, position: Position.all.sample)
end
