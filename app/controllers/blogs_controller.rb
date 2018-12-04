class BlogsController < ApplicationController

  def index
    @presenter = BlogIndexPresenter.new
  end

  def show
    @presenter = BlogShowPresenter.new(params[:id])
  end
  
end
