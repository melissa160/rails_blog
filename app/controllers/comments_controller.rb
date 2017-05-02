class CommentsController < ApplicationController
  before_action :set_markdowm, only: [:show, :create, :new, :index]

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comments_params)

    if @comment.save
      redirect_to post_path(params[:post_id])
    else
      render "posts/show"
    end
  end
  
  private
  def comments_params
    params.require(:comment).permit(:description).merge(post_id: params[:post_id], user_id: current_user.id)
  end
end
 