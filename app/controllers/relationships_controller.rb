class RelationshipsController < ApplicationController
  before_action :set_user

  def create
    following = current_user.follow(@user)
    if following.save
      notification = Notification.new(user_id: params[:follow_id],message: params[:message],url: params[:url])
      notification.save
    
      flash[:success] = 'ユーザーをフォローしました'
      redirect_back fallback_location: root_path , notice: "ユーザーをフォローしました"
    else
      flash.now[:alert] = 'ユーザーのフォローに失敗しました'
      redirect_back fallback_location: root_path , notice: "ユーザーをフォローに失敗しました"
    end
  end

  def destroy
    following = current_user.unfollow(@user)
    if following.destroy
      flash[:success] = 'ユーザーのフォローを解除しました'
      redirect_back fallback_location: root_path , notice: 'ユーザーのフォローを解除しました'
    else
      flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
      redirect_back fallback_location: root_path , notice: 'ユーザーのフォロー解除に失敗しました'
    end
  end

  private
  def set_user
    @user = User.find(params[:follow_id])
  end
end
