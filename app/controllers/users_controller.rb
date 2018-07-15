class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
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
