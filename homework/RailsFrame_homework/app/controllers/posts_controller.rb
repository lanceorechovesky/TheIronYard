class PostsController < ApplicationController
  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create que_params
    redirect_to root_path
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]
    @post.update_attributes que_params
    redirect_to root_path
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_to root_path
  end

private
  def que_params
    params.require(:post).permit(:title, :body)
    
  end
end
