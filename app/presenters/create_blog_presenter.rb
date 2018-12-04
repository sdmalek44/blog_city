class CreateBlogPresenter

  attr_reader :blog

  def initialize(blog_info, categories)
    @blog = Blog.create(blog_info)
    @categories = categories
  end

  def success?
    @blog.save && add_categories_to_blog
  end

  def add_categories_to_blog
    @blog.create_relationships(@categories)
  end

  def category_bar
    Category.all
  end

  def blog_path
    "/blogs/#{@blog.id}"
  end

end
