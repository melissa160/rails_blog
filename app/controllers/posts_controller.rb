class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
  end

  def update
  end

  def new
  end

  def destroy
  end

  def edit
  end

end
