require 'rails_helper'

describe Category, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
  end
  describe 'relationships' do
    it {should have_many :blog_categories}
    it {should have_many :blogs}
  end
end
