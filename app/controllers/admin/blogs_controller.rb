class Admin::BlogsController < Admin::BaseController
  def new
    @blog = Blog.new
  end
end
