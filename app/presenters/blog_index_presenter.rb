class BlogIndexPresenter

  def blogs
    Blog.all.includes(:categories).descend
  end

  def category_bar
    Category.all
  end

end
