class MyfavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:like_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:like_id])
    current_user.dislike(micropost)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_to root_url
  end
end
