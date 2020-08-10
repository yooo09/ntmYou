class AddpostsController < ApplicationController
  def create
    addpost = Addpost.create(addpost_params)
    redirect_to post_path(params[:post_id])
  end

  def destroy
    addpost = Addpost.find(params[:post_id])
    addpost.destroy
    redirect_to root_path
  end

  private
  def addpost_params
    params.require(:addpost).permit(:keyword4, :keyword5, :keyword6).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end