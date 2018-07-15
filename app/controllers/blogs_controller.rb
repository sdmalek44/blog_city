class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.includes(:categories)
  end

  def show
    @blog = Blog.find(params[:id])
    @categories = @blog.categories
  end
end
