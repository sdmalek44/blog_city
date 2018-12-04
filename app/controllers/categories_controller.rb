class CategoriesController < ApplicationController

  def show
    @presenter = CategoriesShowPresenter.new(params[:id])
  end

end
