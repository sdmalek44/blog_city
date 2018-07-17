class Default::CommentsController < Default::BaseController

  def create
    @blog = Blog.find(params[:blog_id])
    Comment.create(comment_params)
    redirect_to blog_path(@blog)
  end

  def edit
    @blog = Blog.find(params[:blog_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:blog_id])
    @comment = Comment.update(params[:id], comment_params)
    if @comment.save
      redirect_to blog_path(@blog)
    else
      render :edit
    end
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
