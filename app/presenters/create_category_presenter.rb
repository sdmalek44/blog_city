class CreateCategoryPresenter
  attr_reader :category
  
  def initialize(category_params)
    @category = Category.create(category_params)
  end

  def category_created?
    @category.save
  end

  def category_path
    "/categories/#{@category.id}"
  end

  def category_bar
    Category.all
  end

end
