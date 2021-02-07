# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
difficulty = ["very easy", "easy", "moderate", "expert"]

puts "Destroying recipes..."

Recipe.destroy_all

puts "Creating recipes..."

10.times do
  recipe = Recipe.new(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    difficulty: difficulty.sample.to_s
    )
