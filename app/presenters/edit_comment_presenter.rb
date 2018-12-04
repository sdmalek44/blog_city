class EditCommentPresenter

  def initialize(blog_id, comment_id)
    @blog_id = blog_id
    @comment_id = comment_id
  end

  def blog
    @blog ||= Blog.find_by(id: @blog_id)
  end

  def comment
    @comment ||= blog.comments.find_by(id: @comment_id)
  end

  def category_bar
    Category.all
  end

end
