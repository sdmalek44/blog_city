class Admin::CategoriesController < Admin::BaseController

  def new
    @presenter = NewCategoryPresenter.new
  end

  def create
    @presenter = CreateCategoryPresenter.new(category_params)
    if @presenter.category_created?
      redirect_to @presenter.category_path
    else
      render :new
    end
  end

  def destroy
    Category.destroy(params[:id])
    redirect_to blogs_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
  end
  
end
