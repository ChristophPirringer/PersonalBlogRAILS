class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
  end

  def new
    @posts = Post.all
    @post = Post.new
  end

  def create
    @posts = Post.all
    @post = Post.new(post_params)
    if @post.save
      redirect_to  posts_path
    else
      render :new
    end
  end

  private

    def post_params
      params.require(:post).permit(:author, :title, :content)
    end

end
