class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show, :update, :destroy]
  before_action :move_to_index, except: [:index, :show]
  
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path
    else
      flash[:notice] = "削除に失敗しました"
    end
  end

  def edit
    @addpost = Addpost.find(params[:id])
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to root_path
    else
      render :edit
    end
    @addpost.update(addpost_params)
  end

  def show
    @addpost = Addpost.new
    @addposts = @post.addposts.includes(:user)
  end


  private
  def post_params
    params.require(:post).permit(:image, :animal, :food, :aura_color, :keyword1, :keyword2, :keyword3, :created_at).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
    @posts = Post.all
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
