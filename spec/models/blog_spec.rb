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
end
