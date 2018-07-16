class Admin::BlogsController < Admin::BaseController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.save
      @blog.create_relationships(params[:blog][:categories])
      redirect_to blog_path(@blog)
    else
      render '/admin/blogs/new'
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :image)
  end
end
