class Admin::CategoriesController < Admin::BaseController
  def new
    @category = Category.new
  end
end
