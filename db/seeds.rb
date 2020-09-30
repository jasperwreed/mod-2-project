# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ProductCategory.destroy_all
Product.destroy_all
User.destroy_all
Category.destroy_all

jack = User.create(first_name: "Jack", last_name: "Jackson", username: "jack_ant", bio: "love insects", password: "oiwnlkno2i")
jim = User.create(first_name: "Jim", last_name: "Parson", username: "jim_tuna", bio: "love tea, coffee, food", password: "iewokdn")
liz = User.create(first_name: "Liz", last_name: "Zo",username: "liz_pie", bio: "love singing, hates insects", password: "i24ijlkxoi")
# mary = User.create(name: "Mary", bio: "love church, pray")

corgi_pillow = Product.create(name: "Mr.Corgi", price: 15.99, description: "Corgi Shaped Pillow", owner_id: User.first.id)
water_bottle = Product.create(name: "Simply", price: 20.00, description: "The best water bottle ever", owner_id: User.second.id)
used_laptop = Product.create(name: "Computer", price: 249.99, description: "Windows 10, 5 years old", owner_id: User.first.id)
snoopy_mug = Product.create(name: "Snoop Dogg", price: 15.99, description: "Vintage, 50 years old", owner_id: User.third.id)
# corgi_pillow = Product.create(name: "Mr.Corgi", price: 15.99, description: "Corgi Shaped Pillow", owner_id: User.first.id)
# corgi_pillow = Product.create(name: "Mr.Corgi", price: 15.99, description: "Corgi Shaped Pillow", owner_id: User.first.id)

toy = Category.create(name: "toy")
electronic = Category.create(name: "electronic")
home_goods = Category.create(name: "home goods")
accessories = Category.create(name: "accessories")

pc1 = ProductCategory.create(category_id: Category.first.id, product_id: Product.first.id)
pc2 = ProductCategory.create(category_id: Category.second.id, product_id: Product.third.id)
pc3 = ProductCategory.create(category_id: Category.third.id, product_id: Product.fourth.id)
pc4 = ProductCategory.create(category_id: Category.fourth.id, product_id: Product.second.id)

review1 = Review.create(rating: 4.0, content: "Oh my gawd I love this", product_id: Product.first.id, user_id: User.first.id)
review2 = Review.create(rating: 3.6, content: "Love the design but not so much about the functionality", product_id: Product.first.id, user_id: User.second.id)
review3 = Review.create(rating: 5.0, content: "AHMAZING", product_id: Product.second.id, user_id: User.first.id)
review4 = Review.create(rating: 2.0, content: "Meh", product_id: Product.third.id, user_id: User.first.id)
review5 = Review.create(rating: 3.1, content: "It's alright", product_id: Product.fourth.id, user_id: User.third.id)

