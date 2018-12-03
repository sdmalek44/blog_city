class BlogShowPresenter
  attr_reader :blog

  def initialize(blog_id)
    @blog = Blog.find_by(id: blog_id)
  end

  def categories
    return @blog.categories if @blog
    []
  end

  def comments
    return @blog.comments if @blog
    []
  end

  def comment
    Comment.new
  end

  def category_bar
    Category.all
  end
end
