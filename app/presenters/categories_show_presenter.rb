class CategoriesShowPresenter

  def initialize(category_id)
    @category_id = category_id
  end

  def category
    @category ||= Category.find_by(id: @category_id)
  end

  def blogs
    @category.blogs.descend
  end

  def category_bar
    Category.all
  end

end
