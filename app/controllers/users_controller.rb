class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    @post = Post.where(user_id: current_user.id)
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(5).order("created_at DESC")
    @users = @user.posts.order("created_at DESC")
    if @user.id != current_user.id
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  
end
