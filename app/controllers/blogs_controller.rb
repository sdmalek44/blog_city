class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.includes(:categories)
    @category_bar = Category.all
  end

  def show
    @blog = Blog.find(params[:id])
    @categories = @blog.categories
  end

  def create
    blog = Blog.create(blog_params)
    blog.create_relationships(params[:blog][:categories])
    redirect_to blog_path(blog)
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :blurb, :body, :image)
  end
end
