require 'rails_helper'

describe Blog, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :body}
    it {should validate_presence_of :image}
  end
  describe 'relationships' do
    it {should have_many :blog_categories}
    it {should have_many :categories}
  end
  describe 'instance methods' do
    it 'can change date to strftime' do
      blog = Blog.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', created_at: Time.new(2015, 1, 13) )

      expect(blog.created_date).to eq("January 13, 2015")
    end
    it 'can create a blurb from body' do
body =
'aaaaaaajskjkjdkfjkjfkdjfjdfkjdkfjkdjfkdjfjdkjfkdjfkjdkfjdkfjkdjfkdjfkjdjfkdjfkdjfkjdkfjkdjfkdjfkjdkfjdkjfkdjfkjdkfjkdjfkdjfkjdfkdjfkjdddfffffffffffffffXXXXX'
      blog = Blog.create!(title: 'shoes', body: body, image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', created_at: Date.new(2015, 1, 13) )

      expect(blog.blurb).to eq("#{body[0, 150]}...")
    end
  end
  describe 'class methods' do
    it 'can order blogs in descending order by created_at' do
      blog1 = Blog.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', created_at: Time.new(2015, 1, 13) )
      blog2 = Blog.create!(title: 'backs', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', created_at: Time.new(2015, 1, 14) )
      blog3 = Blog.create!(title: 'shoulders', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', created_at: Time.new(2015, 1, 15) )

      expect(Blog.descend).to eq([blog3, blog2, blog1])
    end
  end
end
