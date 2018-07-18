# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: 'stephen', email: 'malek_stephen@yahoo.com', password: 'taco', role: 1)
category1 = Category.create!(name: 'fitness', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/Promo-Image-Food.jpg')
category2 = Category.create!(name: 'fashion', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/Promo-Image-Food.jpg')
category3 = Category.create!(name: 'beauty', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/Promo-Image-Food.jpg')
blog1 = category2.blogs.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
blog2 = category3.blogs.create!(title: 'dogs', body: 'doggy', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
category3.blogs.create!(title: 'cats', body: 'kitty', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
category1.blogs.create!(title: 'tanning', body: 'in the sun', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
category1.blogs.create!(title: 'swimming', body: 'just keep swimming', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg')
BlogCategory.create!(blog_id: blog1.id, category_id: category1.id)
BlogCategory.create!(blog_id: blog2.id, category_id: category1.id)
