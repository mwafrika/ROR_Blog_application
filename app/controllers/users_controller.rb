class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.all.order('name ASC')
  end

  def show
    return unless User.exists?(params[:id])

    @user = User.find_by(id: params[:id])
    @posts = @user.posts
    @recent_posts = @user.recent_post
  end
end
