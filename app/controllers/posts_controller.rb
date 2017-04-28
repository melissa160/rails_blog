class PostsController < ApplicationController
  def index
    @posts = Post.order(id: :desc)
  end

  def new
    if user_signed_in?
      @post = Post.new
      render :new
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
    end
  end

  def update
  end

  def destroy
  end

  def edit
    @post = Post.find(params[:id])
    if current_user.id == @post.id
      render :edit
    else
      @post.errors.details["no es tu post"]
    end
  end

  private
  def posts_params
    params.require(:post).permit(:title, :description).merge(user_id: current_user.id)
  end

end
