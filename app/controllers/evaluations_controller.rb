class EvaluationsController < ApplicationController
  protect_from_forgery except: [:destroy,:create]
  def create
    #この書き方でuser_idとquesition_idの両方を@evaluationに代入できる
    @evaluation = current_user.evaluations.create(question_id: params[:question_id])
    @question = Question.find(params[:question_id])
    #評価ボタンを押したときに元の画面に戻ってくるようにする 
    #fallback_locationは万が一前のURLが見つけられなかった場合に指定のURLに遷移する
    # respond_to do |format|
    #   format.html { redirect_back(fallback_location: root_path) }
    #   format.js
    # end
    render json:{
      count: @question.evaluations.count
    }
  end

  def destroy
    @question = Question.find(params[:question_id])
    @evaluation = current_user.evaluations.find_by(question_id: @question.id)
    @evaluation.destroy
    # respond_to do |format|
    #   format.html { redirect_back(fallback_location: root_path) }
    #   format.js
    # end
    render json:{
      count: @question.evaluations.count
    }
  end
end
