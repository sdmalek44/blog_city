require 'rails_helper'

describe Blog, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :body}
    it {should validate_presence_of :blurb}
    it {should validate_presence_of :image}
  end
  describe 'relationships' do
    it {should have_many :blog_categories}
    it {should have_many :categories}
  end
  describe 'instance methods' do
    it 'can change date to strftime' do
      blog = Blog.create!(title: 'shoes', body: 'lookatdeeshoes', image: 'https://i.ytimg.com/vi/AZ2ZPmEfjvU/maxresdefault.jpg', blurb: 'shoesnstuff', created_at: Date.new(2015, 1, 13) )

      expect(blog.created_date).to eq("January 13, 2015")
    end
  end
end
