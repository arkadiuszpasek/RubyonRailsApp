class AdminPageController < ApplicationController
  def index
  end

  def show
  end

  def edit
    if request.get? and params[:id]
      @post = Post.find(params[:id])
    elsif request.post? and params
      @post = Post.find(params[:post][:id])
      @post.update(post_params)
      redirect_to admin_page_index_path
    end
  end

  def delete
    if params[:id]
      @post = Post.find(params[:id])
      @post.destroy
    else
      redirect_to admin_page_index_path
    end
  end

  def create
    if params[:post]
      post = Post.new
      post.title = params[:post][:title]
      post.intro = params[:post][:intro]
      post.reading_time = params[:post][:reading_time]
      post.thumbnail_url = params[:post][:thumbnail_url]
      post.content = params[:post][:content]
      post.save
    end
  end

  def new
  end

  private def post_params
    params.require(:post).permit(:title, :intro, :reading_time, :thumbnail_url, :content)
  end
end
