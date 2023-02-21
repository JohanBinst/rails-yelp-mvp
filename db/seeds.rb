# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "creating 5 restaurants"

5.times {
  name = Faker::Restaurant.name
  category = Restaurant::CATEGORIES.sample
  phone_number = Faker::PhoneNumber.cell_phone
  address = Faker::Fantasy::Tolkien.location
  Restaurant.create({ name:, category:, phone_number:, address: })
}

p "creating 5 ratings for each restaurant"
Restaurant.all.each do |restaurant|
  5.times {
    content = Faker::Restaurant.review
    rating = (0..5).to_a.sample
    Review.create({ content:, rating:, restaurant_id: restaurant.id })
  }
end

p "seed complete"
