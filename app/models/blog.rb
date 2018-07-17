class Blog < ApplicationRecord
  validates_presence_of :title, :body, :image
  has_many :blog_categories, dependent: :destroy
  has_many :categories, through: :blog_categories
  has_many :comments

  def created_date
    created_at.strftime('%B %e, %Y')
  end

  def create_relationships(category_ids)
    category_ids.map! {|cat_id| cat_id.to_i}
    valid_categories = Category.where(id: category_ids)
    valid_categories.each { |category| BlogCategory.create(blog_id: id, category_id: category.id) }
  end

  def blurb
    "#{body[0, 150]}..."
  end
end
