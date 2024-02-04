class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
    @posts = Post.includes(:user).order("created_at DESC").limit(5)
    @prefecture = Prefecture.where(id: 2..8)
    @prefecture2 = Prefecture.where(id: 9..16)
    @prefecture3 = Prefecture.where(id: 17..25)
    @prefecture4 = Prefecture.where(id: 26..31)
    @prefecture5 = Prefecture.where(id: 32..40)
    @prefecture6 = Prefecture.where(id: 41..48)
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
  end

  def show
    @like_count = Like.where(post_id: @post.id).count
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit, status: 422
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :text2, :text3, :recommend, :disappointed, :place, :prefecture_id, :season_id, :point_id, images: []).merge(user_id: current_user.id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    if user_signed_in? && current_user != @post.user
      redirect_to action: :index
    end
  end
end
