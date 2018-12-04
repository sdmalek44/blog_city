class CreateSessionPresenter

  def initialize(username_password)
    @user = User.find_by(username: username_password[:username])
    @password = username_password[:password]
  end

  def authenticated?
    @user && @user.authenticate(@password)
  end

  def user_id
    @user.id
  end

  def category_bar
    Category.all
  end
end
