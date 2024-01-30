class SearchesController < ApplicationController
  def index
    @prefecture = Prefecture.find(params[:id])
    @posts = Post.where(prefecture_id: @prefecture.id)
  end
end
