require 'faker'

# Create 10 users
10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password'
  )
end

# Create 20 listings
20.times do
  listing = Listing.create!(
    title: Faker::Hipster.word.capitalize,
    description: Faker::Hipster.paragraph_by_chars(characters: 256),
    location: Faker::Address.city,
    price: Faker::Number.between(from: 10, to: 100),
    user: User.all.sample
  )
  puts "Created listing: #{listing.title} by #{listing.user.email}"
end

puts "Seed finished."
