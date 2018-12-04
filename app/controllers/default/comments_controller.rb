class Default::CommentsController < Default::BaseController

  def create
    @blog = Blog.find(params[:blog_id])
    Comment.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def edit
    @presenter = EditCommentPresenter.new(params[:blog_id], params[:id])
  end

  def update
    @presenter = UpdateCommentPresenter.new(params[:id], comment_params)
    @presenter.comment_updated? ? (redirect_to @presenter.blog_path) : (render :edit)
  end

  def destroy
    @blog = Blog.find(params[:blog_id])
    Comment.destroy(params[:id])
    redirect_to blog_path(@blog)
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :blog_id, :body)
  end
end
