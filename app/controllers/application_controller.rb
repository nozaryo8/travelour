class ApplicationController < ActionController::Base
  # deviseコントローラーにストロングパラメータを追加する 
  before_action :configure_permitted_parameters, if: :devise_controller?
  # ログイン済ユーザーのみにアクセスを許可する
  # before_action :authenticate_user!
  before_action :set_search
  before_action :search_params , only:[:set_search]

  def after_sign_in_path_for(resource)
    questions_path
  end

  def after_sign_up_path_for(resource)
    questions_path
  end
  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end

  def set_search
    @search = Question.ransack(params[:q])
    @question = @search.result.includes(:tag, :user).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
  end
  #ストロングパラメータ：deviseではサインアップ時emailとpasswordの入力しか許可しないが以下のメソッドで登録が可能になる
    protected
      def search_params
        params.require(:q).permit(:mode,:order ,:country)
      end

      def configure_permitted_parameters
        # サインアップ時にusernameのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :image])
        # アカウント編集の時にnameとprofileのストロングパラメータを追加
        devise_parameter_sanitizer.permit(:account_update, keys: [:username,:image,:profile])
      end
end
