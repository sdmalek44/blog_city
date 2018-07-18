class Admin::BlogsController < Admin::BaseController
  def new
    @blog = Blog.new
    @category_bar = Category.all
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

  def destroy
    Blog.destroy(params[:id])

    redirect_to blogs_path
  end

  def edit
    @blog = Blog.find(params[:id])
    @category_bar = Category.all
  end

  def update
    @blog = Blog.update(params[:id], blog_params)
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
