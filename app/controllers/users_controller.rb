class UsersController < ApplicationController
  before_action :correct_user, only:[:new,:edit]
  before_action :authenticate_user!
  before_action :ensure_normal_user, only: :edit
  def show
    @user = User.find(params[:id])
  
  end

  def connections
    @user = User.find(params[:id])
    if params[:mode] == 'followings' || params[:mode] == nil
      @connections = @user.followings
    elsif params[:mode] == 'followers'
      @connections = @user.followers
      
    else params[:mode] == 'matchers'
      @connections = @user.matchers
    end
  end

  def notifications
    notifications = Notification.where(user_id: current_user.id).order(created_at: "DESC")
    @notifications= Kaminari.paginate_array(notifications).page(params[:page]).per(10)
  end

  def evaluations
    @user = User.find(params[:id])
    @questions = Question.where(id: @user.evaluations)
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
      params.require(:user).permit(:username, :email,:profile,:image, :remove_image, :rank)
    end

    def correct_user
      @user = User.find(params[:id])
      if @user != current_user
        redirect_to root_url , alert: '不正なアクセスです'
      end
    end 

    def ensure_normal_user
      if @user.email == 'guest@gmail.com'
        redirect_to user_path(@user.id), notice: 'ゲストユーザーは編集できません'
      end
    end
end
