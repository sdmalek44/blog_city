class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.includes(:categories)
    @category_bar = Category.all
  end

  def show
    @blog = Blog.find(params[:id])
    @categories = @blog.categories
    @comments = @blog.comments
    @comment = Comment.new
    @user_id = session[:user_id] if session[:user_id]
  end
end
