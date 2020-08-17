class AddpostsController < ApplicationController

  def create
    @addpost = Addpost.create(addpost_params)
    if @addpost.save
      redirect_to post_path(params[:post_id])
      # redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @addpost = Addpost.find(params[:post_id])
  end

  def update
    @post = Post.find_by(id:params[:id])
    @addpost.update(addpost_params)
    if @addpost.save
      redirect_to post_path(params[:post_id])
    else
      render :edit
    end
  end

  def destroy
    @addpost = Addpost.find(params[:post_id])
    if @addpost.destroy
      redirect_to post_path(params[:post_id])
    else
      flash[:notice] = "削除に失敗しました"
    end
  end

  private
  def addpost_params
    params.require(:addpost).permit(:keyword4, :keyword5, :keyword6).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end