class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tags = Tag.all
    @tag = Tag.find(params[:id])
  end

  def new
    @tags = Tag.all
    @tag = Tag.new
  end

  def create
    @tags = Tag.all
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to  tags_path
    else
      render :new
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

  private

    def tag_params
      params.require(:tag).permit(:tag_name)
    end

end
