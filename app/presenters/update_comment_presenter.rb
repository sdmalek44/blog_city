class UpdateCommentPresenter

  def initialize(comment_id, comment_params)
    @blog = Blog.find_by(id: comment_params[:blog_id])
    @comment = Comment.update(comment_id, comment_params)
  end

  def comment_updated?
    @comment.save
  end

  def category_bar
    Category.all
  end

  def blog_path
    "/blogs/#{@blog.id}"
  end

end
