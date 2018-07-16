class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @blogs = @category.blogs
    @category_bar = Category.all
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
