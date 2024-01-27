class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @posts = Post.includes(:user).order("created_at DESC").limit(5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

    def show
      @post = Post.find(params[:id])
    end
    
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :text2, :text3, :recommend, :disappointed, :place, :prefecture_id, :season_id, :point_id, images: []).merge(user_id: current_user.id)
  end
end
