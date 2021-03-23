class QuestionsController < ApplicationController
  #@questionを作成する
  before_action :set_question, only: %i[ show edit update destroy ]
  #@tagsを作成する ブラウザでタグを表示するため
  before_action :set_tag, only:[:new,:edit,:create,:update]
  # before_action :authenticate_user!
  
  # GET /questions or /questions.json
  def index
    #@questions = current_user.questions.all
    @q = Question.ransack(params[:q])
    @questions = @q.result(distinct: true)
  end

  # GET /questions/1 or /questions/1.json
  def show
    # before_action :set_question
  end

  # GET /questions/new
  def new
    @question = Question.new
    # before_action :set_tag
  end

  # GET /questions/1/edit
  def edit
    # before_action :set_question
    # before_action :set_tag
    if @question.user.id != current_user.id
      redirect_to root_url , alert: '不正なアクセスです'
    end

  end

  # POST /questions or /questions.json
  def create
    #before_action :set_tag
    #ログインしているユーザーが質問を作る
    @question = current_user.questions.build(question_params)
    # respond_to: リクエストされるフォーマットがHTML形式の場合とJSON形式の場合で処理を分けることができる
    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: "質問を投稿しました" }
        format.json { render :show, status: :created, location: @question }
      else
        #savaできなかった場合
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    # before_action :set_question
    #before_action :set_tag
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: "質問を更新しました" }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    # before_action :set_question
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: "質問を削除しました" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    def set_tag
      @tags = Tag.all
    end

    def correct_user
      @user = User.find(params[:id])
      if @user != current_user
        redirect_to root_url , alert: '不正なアクセスです'
      end
    end

    # Only allow a list of trusted parameters through.
    def question_params
      # ここを修正
      params.require(:question).permit(:user_id, :title, :body, :best_answer_id, {:tag_ids => []})
    end
end
