class AdminPageController < ApplicationController
  def index
  end

  def show
    
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
end
