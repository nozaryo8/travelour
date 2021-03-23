class UsersController < ApplicationController
  before_action :correct_user, only:[:new,:edit]
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to root_url , alert: '不正なアクセスです'
    end

    if @user.update(user_params)
      redirect_to questions_path, notice: 'ユーザー情報を更新しました'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email,:profile,:image)
  end

  def correct_user
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to root_url , alert: '不正なアクセスです'
    end
  end 
end
