class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :find_post, only: [:show, :edit, :update]
  before_action :move_to_index, only: [:edit, :update]

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
  end

  def show
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
