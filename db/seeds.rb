require "faker"

difficulty = ["very easy", "easy", "moderate", "expert"]

puts "Destroying recipes..."

Recipe.destroy_all

puts "Creating recipes..."

10.times do
  recipe = Recipe.new(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    difficulty: difficulty.sample.to_s
    user_id: 1
    )
  recipe.save
  puts "Creating #{recipe.name}"
end

puts "Seeding complete"
