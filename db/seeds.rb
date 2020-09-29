# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Jack = User.new(name: "Jack", bio: "love insects")
Jim = User.new(name: "Jim", bio: "love tea, coffee, food")
Liz = User.new(name: "Liz", bio: "love singing, hates insects")
Mary = User.new(name: "Mary", bio: "love church, pray")