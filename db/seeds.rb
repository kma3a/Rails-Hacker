# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create!(title: "cool", url: "devbootcamp.com", creator_id: 1)
User.create!(username: "VanillaBear", email: "vanillabear@gmail.com", password: "poop", password_confirmation: "poop")
Comment.create!(post_id: 1, user_id: 1, text: "What a nickname, man!")
