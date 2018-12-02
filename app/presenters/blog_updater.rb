class BlogUpdater
  attr_reader :blog

  def initialize(blog_id, update_info, categories)
    @blog = Blog.update(blog_id, update_info)
    @categories = categories
  end

  def success?
    @created ||= @blog.save
  end

  def add_categories_to_blog
    @blog.create_relationships(@categories) if success?
  end

  def happy_path
    "/blogs/#{@blog.id}"
  end

  def sad_path
    '/admin/blogs/edit'
  end
end
