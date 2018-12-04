class BlogFormPresenter
  attr_reader :blog

  def initialize(blog_id = nil)
    @blog = Blog.find_by(id: blog_id) || Blog.new
  end

  def category_bar
    Category.all
  end
end
