class Blog < ApplicationRecord
  validates_presence_of :title, :body, :image
  has_many :blog_categories, dependent: :destroy
  has_many :categories, through: :blog_categories
  has_many :comments, dependent: :destroy

  def created_date
    created_at.strftime('%B %e, %Y')
  end

  def create_relationships(category_ids)
    category_ids.each { |category_id| blog_categories.find_or_create_by(category_id: category_id) }
  end

  def blurb
    "#{body[0, 150]}..."
  end

  def self.descend
    order(created_at: :desc)
  end
end
