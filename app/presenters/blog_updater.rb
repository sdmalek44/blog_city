class BlogUpdater
  attr_reader :blog

  def initialize(blog_id, update_info, categories)
    @blog = Blog.update(blog_id, update_info)
    @categories = categories
  end

  def success?
    @blog.save && add_categories_to_blog
  end

  def add_categories_to_blog
    @blog.create_relationships(@categories)
  end

  def happy_path
    "/blogs/#{@blog.id}"
  end

  def sad_path
    '/admin/blogs/edit'
  end

  def category_bar
    Category.all
  end
end
