class PagesController < ApplicationController
  #authenticate_user!: ログインしていない状態であれば、ログインページへ飛ばす、ログインしていればこのページのアクションを実行できる
  before_action :authenticate_user!
  def index
    @questions = current_user.questions.all
  end

  def show
  end
end
