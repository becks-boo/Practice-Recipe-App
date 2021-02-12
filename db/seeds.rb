require "faker"

difficulty = ["very easy", "easy", "moderate", "expert"]

puts "Destroying recipes..."
Recipe.destroy_all

puts "Drestroying users..."
User.destroy_all

puts "Creating recipes..."

user = User.new(email: "igor_stein@yahoo.de", password: "123456")
user.save
puts "Creating new user with #{user.email}"

10.times do
  recipe = Recipe.create!(
    name: Faker::Food.dish,
    description: Faker::Food.description,
    difficulty: difficulty.sample.to_s,
    user_id: user.id
    )
  puts "Creating #{recipe.name}"
end

puts "Seeding complete"
