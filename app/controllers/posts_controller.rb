class PostsController < ApplicationController
  before_action :set_markdowm, only: [:show, :create, :new, :index]

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
      redirect_to posts_path
    else
      render new_post_path
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(posts_params)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
    render :edit
  end

  private
  def posts_params
    params.require(:post).permit(:title, :description).merge(user_id: current_user.id)
  end

end
