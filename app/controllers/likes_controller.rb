class LikesController < ApplicationController
  def create
    like = current_user.likes.build(post_id: params[:post_id])
    like.save
    redirect_to root_path
  end
end
