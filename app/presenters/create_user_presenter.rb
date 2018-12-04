class CreateUserPresenter

  def initialize(user_params)
    @user = User.create(user_params)
  end

  def user_created?
    @user.save
  end

  def user_id
    @user.id
  end

  def category_bar
    Category.all
  end
end
