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
    @presenter = BlogFormPresenter.new(params[:id])
  end

  def update
    @presenter = BlogUpdater.new(params[:id], blog_params, blog_categories)
    @presenter.success? ? (redirect_to @presenter.happy_path) : (render @presenter.sad_path)
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :image)
  end

  def blog_categories
    params.require(:blog).require(:categories)
  end
end
