class UsersController < ApplicationController
  
  def new
    @presenter = NewUserPresenter.new
  end

  def create
    @presenter = CreateUserPresenter.new(user_params)
    if @presenter.user_created?
      session[:user_id] = @presenter.user_id
      redirect_to blogs_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :email, :username, :role)
  end

end
