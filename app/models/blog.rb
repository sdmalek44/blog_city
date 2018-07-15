class Blog < ApplicationRecord
  validates_presence_of :title, :blurb, :body, :image
  has_many :blog_categories
  has_many :categories, through: :blog_categories
end
