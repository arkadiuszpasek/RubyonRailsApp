class ArticleController < ApplicationController
  def display
      if request.get? and params[:id]
        @post = Post.find(params[:id])
        if !@post
          redirect_to root_path
        end
      end
  end
end
