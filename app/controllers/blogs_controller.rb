class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.includes(:categories)
  end
end
