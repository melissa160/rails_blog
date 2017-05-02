class CommentsController < ApplicationController
  before_action :set_markdowm, only: [:show, :create, :new, :index, :update]

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comments_params)

    if @comment.save
      redirect_to post_path(params[:post_id])
    else
      render "posts/show"
    end
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    render :edit
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comments_params)
    @post = Post.find(params[:post_id])
    if @comment.valid?
      redirect_to post_path(params[:post_id])
    else
      render "comments/edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(params[:post_id])
  end
  
  private
  def comments_params
    params.require(:comment).permit(:description).merge(post_id: params[:post_id], user_id: current_user.id)
  end
end
 