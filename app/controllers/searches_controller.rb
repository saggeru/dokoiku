class SearchesController < ApplicationController
  def show
    @prefecture = Prefecture.find(params[:id])
    @posts = Post.where(prefecture_id: @prefecture.id).order("created_at DESC")
  end
end
