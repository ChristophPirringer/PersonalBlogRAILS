class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new(tag_params)
    @post.tags.push(@tag)
    if @tag.save
      flash[:alert] = "Not bad, for a new guy!"
      redirect_to  post_path(@post)
    else
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @tag = @post.tags.find(params[:id])
    @tag.destroy
    flash[:notice] = "Another one bites the dust!"
    redirect_to post_path(@post)
  end

  private

    def tag_params
      params.require(:tag).permit(:tag_name)
    end

end
