class AnswersController < ApplicationController
  protect_from_forgery except: :new
  before_action :authenticate_user!
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  # before_action :set_answer, only: %i[ show edit update destroy ]

  # GET /answers or /answers.json
  def index
    @q = Question.ransack(params[:q])
   
    @questions = @q.result(distinct: true)
  end

  # GET /answers/1 or /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    question = Question.find(params[:question_id])
    @answer = question.answers.build(user_id: current_user.id)
    
    if question.user.id == current_user.id
      redirect_to question
    end
    respond_to do |format|
      format.html 
      format.js
    end
    
  end

  # GET /answers/1/edit
  def edit
  end


  # POST /answers or /answers.json
  def create
    @question = Question.find(params[:question_id])
    #has_manyでquestion.answersが使える
    @answer = @question.answers.build(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @question, notice: "回答を送信しました" }
        # format.json { render :show, status: :created, location: @answer }
        format.js {
          flash[:notice] = "回答を送信しました"
        }
        Notification.new(user_id: @question.user.id,message: "#{@answer.user.username}さんが、あなたの質問に回答しました。",
          url: "/questions/#{@question.id}").save
      else
        format.html { redirect_to @question , alert: "回答を送信できませんでした。" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1 or /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer.question, notice: "回答を更新しました" }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :question }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1 or /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path, notice: "回答を削除しました"  }
      format.json { head :no_content }
      format.js { 
        flash[:notice] = "回答を削除しました。"
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def answer_params
      params.require(:answer).permit(:user_id, :question_id, :body , :image,:image_cache)
    end
end
