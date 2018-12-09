# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

cat1 = Category.find_or_create_by! name: 'Apparel'
cat2 = Category.find_or_create_by! name: 'Electronics'
cat3 = Category.find_or_create_by! name: 'Furniture'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

pro1 = cat1.products.create!({
  name:  'Men\'s Classy shirt',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
})

pro2 = cat1.products.create!({
  name:  'Women\'s Zebra pants',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel2.jpg'),
  quantity: 18,
  price: 124.99
})

pro3 = cat1.products.create!({
  name:  'Hipster Hat',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel3.jpg'),
  quantity: 4,
  price: 34.49
})

pro4 = cat1.products.create!({
  name:  'Hipster Socks',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel4.jpg'),
  quantity: 8,
  price: 25.00
})

pro5 = cat1.products.create!({
  name:  'Russian Spy Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel5.jpg'),
  quantity: 8,
  price: 1_225.00
})

pro6 = cat1.products.create!({
  name:  'Human Feet Shoes',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel6.jpg'),
  quantity: 82,
  price: 224.50
})


cat2.products.create!({
  name:  'Modern Skateboards',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics1.jpg'),
  quantity: 40,
  price: 164.49
})

cat2.products.create!({
  name:  'Hotdog Slicer',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics2.jpg'),
  quantity: 3,
  price: 26.00
})

cat2.products.create!({
  name:  'World\'s Largest Smartwatch',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('electronics3.jpg'),
  quantity: 32,
  price: 2_026.29
})

cat3.products.create!({
  name:  'Optimal Sleeping Bed',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture1.jpg'),
  quantity: 320,
  price: 3_052.00
})

cat3.products.create!({
  name:  'Electric Chair',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture2.jpg'),
  quantity: 2,
  price: 987.65
})

cat3.products.create!({
  name:  'Red Bookshelf',
  description: Faker::Hipster.paragraph(4),
  image: open_asset('furniture3.jpg'),
  quantity: 0,
  price: 2_483.75
})

#Users
puts"Reacreating Users"
User.destroy_all
user1 = User.create!({
  email: "example@example.com",
  password: "asdf"
})
user2 = User.create!({
  email: "test@example.com",
  password: "1234"
})
user3 = User.create!({
  email: "example@example.com",
  password: "asdf"
})
user4 = User.create!({
  email: "test@example.com",
  password: "1234"
})
user5 = User.create!({
  email: "example@example.com",
  password: "asdf"
})
user6 = User.create!({
  email: "test@example.com",
  password: "1234"
})
user7 = User.create!({
  email: "example@example.com",
  password: "asdf"
})
user8 = User.create!({
  email: "test@example.com",
  password: "1234"
})
user9 = User.create!({
  email: "example@example.com",
  password: "asdf"
})
user10 = User.create!({
  email: "test@example.com",
  password: "1234"
})
user11 = User.create!({
  email: "example@example.com",
  password: "asdf"
})
user12 = User.create!({
  email: "test@example.com",
  password: "1234"
})
#Ratings

puts "Recreating Ratings..."
ProductRating.destroy_all
pro1.product_ratings.create!({
  user_id: user1.id,
  rating: 5,
  description: Faker::Hipster.paragraph(4)
})
pro2.product_ratings.create!({
  user_id: user2.id,
  rating: 3,
  description: Faker::Hipster.paragraph(4)
})
pro3.product_ratings.create!({
  user_id: user1.id,
  rating: 5,
  description: Faker::Hipster.paragraph(4)
})
pro2.product_ratings.create!({
  user_id: user1.id,
  rating: 1,
  description: Faker::Hipster.paragraph(4)
})
pro2.product_ratings.create!({
  user_id: user1.id,
  rating: 2,
  description: Faker::Hipster.paragraph(4)
})
pro5.product_ratings.create!({
  user_id: user1.id,
  rating: 2,
  description: Faker::Hipster.paragraph(4)
})
pro5.product_ratings.create!({
  user_id: user1.id,
  rating: 2,
  description: Faker::Hipster.paragraph(4)
})
pro4.product_ratings.create!({
  user_id: user1.id,
  rating: 2,
  description: Faker::Hipster.paragraph(4)
})
pro3.product_ratings.create!({
  user_id: user1.id,
  rating: 2,
  description: Faker::Hipster.paragraph(4)
})


puts "DONE!"
