class CommentsController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    Comment.create(comment_params)
    redirect_to blog_path(@blog)
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
