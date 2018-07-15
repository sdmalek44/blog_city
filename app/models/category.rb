class Category < ApplicationRecord
  validates_presence_of :name
  has_many :blog_categories
  has_many :blogs, through: :blog_categories
end
