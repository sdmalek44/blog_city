class Admin::BlogsController < Admin::BaseController
  def new
    @presenter = BlogFormPresenter.new
  end

  def create
    @presenter = BlogCreator.new(blog_params, blog_categories)
    @presenter.success? ? (redirect_to @presenter.happy_path) : (render @presenter.sad_path)
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
