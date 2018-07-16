class Blog < ApplicationRecord
  validates_presence_of :title, :body, :image
  has_many :blog_categories
  has_many :categories, through: :blog_categories

  def created_date
    created_at.strftime('%B %e, %Y')
  end

  def create_relationships(category_ids)
    category_ids.each {|cat_id| BlogCategory.create(blog_id: id, category_id: cat_id.to_i) }
  end

  def blurb
    "#{body[0, 150]}..."
  end
end
