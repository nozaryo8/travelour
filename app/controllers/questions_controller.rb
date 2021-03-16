class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]
  #authenticate_user!: ログインしていない状態であれば、ログインページへ飛ばす、ログインしていればこのページのアクションを実行できる
  before_action :authenticate_user!
  
  # GET /questions or /questions.json
  def index
    #@questions = current_user.questions.all
    @q = Question.ransack(params[:q])
    @questions = @q.result(distinct: true)
  end

  # GET /questions/1 or /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    # 新規作成画面でタグを表示するため
    @tags = Tag.all
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
    # 修正画面でタグを表示するため
    @tags = Tag.all
  end

  # POST /questions or /questions.json
  def create
    #ログインしているユーザーが質問を作る
    @question = current_user.questions.build(question_params)

    # respond_to: リクエストされるフォーマットがHTML形式の場合とJSON形式の場合で処理を分けることができる
    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def question_params
      # ここを修正
      params.require(:question).permit(:user_id, :title, :body, :best_answer_id, {:tag_ids => []})
    end
end
