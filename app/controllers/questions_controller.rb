class QuestionsController < ApplicationController
  protect_from_forgery except: :get_body
  #@questionを作成する
  before_action :set_question, only: %i[ show edit update destroy]
  #@tagsを作成する ブラウザでタグを表示するため
  before_action :set_tag, only:[:new,:edit,:create,:update]
  before_action :authenticate_user!, only:[:new,:create,:edit,:update,:show,:index,:resolved_question,:all_question]
  
  def top

  end
  def area
    @countries = Country.all
  end

  # GET /questions or /questions.json
  def index
    #@questions = current_user.questions.all
    @q = Question.ransack(params[:q])
    # @question = @q.result(distinct: true)
    
    if params[:format] == "1"
      # @questions = @q.result(distinct: true).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
      @questions = @q.result.includes(:tag, :user).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
    elsif params[:format] == "2"
      # question = @q.result(distinct: true).where(best_answer_id: nil,).sort {|a,b| b.answers.size <=> a.answers.size}
      questions = @q.result.includes(:tag, :user).where(best_answer_id: nil,).sort {|a,b| b.answers.size <=> a.answers.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      
    elsif params[:format] == "3"
      # question = @q.result(distinct: true).where(best_answer_id: nil,).sort {|a,b| a.answers.size <=> b.answers.size}
      questions = @q.result.includes(:user,:tag, ).where(best_answer_id: nil,).sort {|a,b| a.answers.size <=> b.answers.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
    elsif params[:format] == "4"
      # question = @q.result(distinct: true).where(best_answer_id: nil,).sort {|a,b| b.evaluations.size <=> a.evaluations.size}
      questions = @q.result.includes(:tag, :user).where(best_answer_id: nil,).sort {|a,b| b.evaluations.size <=> a.evaluations.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
    else
      # @questions = @q.result(distinct: true).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
      @questions = @q.result.includes(:user,:tag).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
    end

  end

  def resolved_question
    @q = Question.ransack(params[:q])
    if params[:format] == "1"
      
    elsif params[:format] == "2"
      questions = @q.result.includes(:user,:tag).where.not(best_answer_id: nil,).sort {|a,b| b.answers.size <=> a.answers.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      
    elsif params[:format] == "3"
      questions = @q.result.includes(:user,:tag).where.not(best_answer_id: nil,).sort {|a,b| a.answers.size <=> b.answers.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
    elsif params[:format] == "4"
      questions = @q.result.includes(:user,:tag).where.not(best_answer_id: nil,).sort {|a,b| b.evaluations.size <=> a.evaluations.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
    else
      @questions = @q.result.includes(:user,:tag).page(params[:page]).per(10).where.not(best_answer_id: nil).order(created_at: "DESC")
    end
  end
  
  def all_question
    @q = Question.ransack(params[:q])
    if params[:format] == "1"
      @questions = @q.result.includes(:user,:tag).page(params[:page]).per(10).all.order(created_at: "DESC")
    elsif params[:format] == "2"
      questions = @q.result.includes(:user,:tag).all.sort {|a,b| b.answers.size <=> a.answers.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      
    elsif params[:format] == "3"
      questions = @q.result.includes(:user,:tag).all.sort {|a,b| a.answers.size <=> b.answers.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
    elsif params[:format] == "4"
      questions = @q.result.includes(:user,:tag).all.sort {|a,b| b.evaluations.size <=> a.evaluations.size}
      @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
    else
      @questions = @q.result.includes(:user,:tag).page(params[:page]).per(10).all.order(created_at: "DESC")
    end
  end

  # GET /questions/1 or /questions/1.json
  def show
    # before_action :set_question
    if @question.best_answer_id
      @bestanswer = Answer.find(@question.best_answer_id)
    end
    question = Question.find(params[:id])
    if user_signed_in?
      @answer = question.answers.build(user_id: current_user.id)
    end
    
  end

  
  # GET /questions/new
  def new
    if params[:area]
      @c = Country.find(params[:area])
    end
    @question = Question.new
    @continents = Continent.all
    @countries = Country.all
    # before_action :set_tag
  end

  def get_body
    @continent = Continent.find(params[:continent_id])
    @countries = @continent.countries
    respond_to do |format|
      format.js
    end
  end

  # GET /questions/1/edit
  def edit
    # before_action :set_question
    # before_action :set_tag
    @countries = Country.all
    @continents = Continent.all
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
      params.require(:question).permit(:user_id, :title, :body, :best_answer_id,:country_id,:tag_id)
    end
end
