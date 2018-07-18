class Admin::CategoriesController < Admin::BaseController
  def new
    @category = Category.new
    @category_bar = Category.all
  end

  def create
    @category = Category.create(category_params)
    if @category.save
      redirect_to category_path(@category)
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
    params.require(:category).permit(:name)
  end
end
