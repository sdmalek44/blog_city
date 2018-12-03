class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.includes(:categories)
    @category_bar = Category.all
  end

  def show
    @presenter = BlogShowPresenter.new(params[:id])
  end
end
