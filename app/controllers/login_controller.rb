class LoginController < ApplicationController
  def signin
    if params.include? :user
      @user = User.new(user_params)
      require 'digest'
      @user.pwd_hash = Digest::SHA256::hexdigest params[:user][:pwd_hash]
      @db_user = User.find_by name: @user.name
      if @db_user.nil? || @db_user.pwd_hash != @user.pwd_hash
        # TODO: Add failed login handle
        redirect_to root_path
      else
        redirect_to admin_page_index_path
      end
    end
  end

  def signup
    if params.include? :user
      @user = User.new(user_params)
      require 'digest'
      @user.pwd_hash = Digest::SHA256::hexdigest params[:user][:pwd_hash]
      @user.save
      redirect_to admin_page_index_path
    end
  end

  private def user_params
    params.require(:user).permit(:name, :pwd_hash)
  end
end
