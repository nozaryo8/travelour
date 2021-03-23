class EvaluationsController < ApplicationController
  def create
    #この書き方でuser_idとquesition_idの両方を@evaluationに代入できる
    @evaluation = current_user.evaluations.create(question_id: params[:question_id])
    #評価ボタンを押したときに元の画面に戻ってくるようにする 
    #fallback_locationは万が一前のURLが見つけられなかった場合に指定のURLに遷移する
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @question = Question.find(params[:question_id])
    @evaluation = current_user.evaluations.find_by(question_id: @question.id)
    @evaluation.destroy
    redirect_back(fallback_location: root_path)
  end
end
