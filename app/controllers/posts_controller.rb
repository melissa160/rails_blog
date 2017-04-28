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

  end

  def update
  end

  def destroy
  end

  def edit
  end

end
