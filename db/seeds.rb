# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = Category.create!(name: 'general')
category.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', blurb: 'shoesnstuff')
category.blogs.create!(title: 'dogs', body: 'doggy', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', blurb: 'doggggy')
category.blogs.create!(title: 'cats', body: 'kitty', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', blurb: 'kittten')
