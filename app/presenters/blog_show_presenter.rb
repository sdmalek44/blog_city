class BlogShowPresenter
  attr_reader :blog

  def initialize(blog_id)
    @blog = Blog.find_by(id: blog_id)
  end

  def categories
    @blog.categories
  end

  def comments
    @blog.comments
  end

  def comment
    Comment.new
  end

  def category_bar
    Category.all
  end
end
