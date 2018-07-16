class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.includes(:categories)
    @category_bar = Category.all
  end

  def show
    @blog = Blog.find(params[:id])
    @categories = @blog.categories
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :image)
  end
end
