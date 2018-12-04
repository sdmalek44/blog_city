class NewUserPresenter

  def user
    User.new
  end

  def category_bar
    Category.all
  end
  
end
