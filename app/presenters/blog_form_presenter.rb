class BlogFormPresenter
  attr_reader :blog

  def initialize(blog_id = nil)
    @blog = Blog.find_by(id: blog_id) || Blog.new
  end

  def categories
    @categories ||= Category.all
  end

end
