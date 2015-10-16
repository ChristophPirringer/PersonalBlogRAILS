class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tags = Tag.all
    @tag = Tag.find(params[:id])
  end

  def new
    @post = Post.find(params[:post_id])
    @tag = @post.tags.new
  end

  def create
    @post = Post.find(params[:post_id])
    @tag = @post.tag.new(tag_params)
    if @tag.save
      flash[:alert] = "Not bad, for a new guy!"
      redirect_to  tags_path
    else
      render :new
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:notice] = "Another one bites the dust!"
    redirect_to tags_path
  end

  private

    def tag_params
      params.require(:tag).permit(:tag_name)
    end

end
