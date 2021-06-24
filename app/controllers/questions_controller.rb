class QuestionsController < ApplicationController
  protect_from_forgery except: :get_body
  #@questionを作成する
  before_action :set_question, only: %i[ show edit update destroy]
  #@tagsを作成する ブラウザでタグを表示するため
  before_action :set_tag, only:[:new,:edit,:create,:update]
  before_action :authenticate_user!, only:[:new,:create,:edit,:update,:show,:index,:resolved_question,:all_question]
  impressionist :actions=> [:show]

  def top

  end
  def area
    @countries = Country.all
  end

  # GET /questions or /questions.json
  def index
    # @question = @q.result(distinct: true)
    @continents = Continent.all
    @tags = Tag.all
    @ranks = Question.last_week
    @new_resolved = Question.recentry_resolved_questions
    if params[:q]
      @words = params[:q][:title_or_body_or_tag_name_or_country_name_cont].split(/[\p{blank}\s]+/)
      # @words = []
      # words.each do |word|
      #   w = {}
      #   w[:word] = word
      #   r = words
      #   r.delete(word)
      #   w[:words] = r.join(" ")
      #   @words.append(w)
      # end
      # @w = params[:q][:title_or_body_or_tag_name_or_country_name_cont].split(/[\p{blank}\s]+/)
    else
      
    

    end
    #application_controllerにset_searchを記述
    if params[:mode] == "index" || params[:mode] == nil
      if params[:order] == "questions_new"
        # @questions = @q.result(distinct: true).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
        @questions = @search.result.includes(:tag, :user).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
      elsif params[:order] == "answers_desc"
        # question = @q.result(distinct: true).where(best_answer_id: nil,).sort {|a,b| b.answers.size <=> a.answers.size}
        questions = @search.result.includes(:tag, :user).where(best_answer_id: nil).sort {|a,b| b.answers.size <=> a.answers.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
        
      elsif params[:order] == "answers_asc"
        # question = @q.result(distinct: true).where(best_answer_id: nil,).sort {|a,b| a.answers.size <=> b.answers.size}
        questions = @search.result.includes(:user,:tag, ).where(best_answer_id: nil).sort {|a,b| a.answers.size <=> b.answers.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      elsif params[:order] == "evaluations_desc"
        # question = @q.result(distinct: true).where(best_answer_id: nil,).sort {|a,b| b.evaluations.size <=> a.evaluations.size}
        questions = @search.result.includes(:tag, :user).where(best_answer_id: nil).sort {|a,b| b.evaluations.size <=> a.evaluations.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      else
        # @questions = @q.result(distinct: true).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
        @questions = @search.result.includes(:user,:tag).page(params[:page]).per(10).where(best_answer_id: nil).order(created_at: "DESC")
      end

    elsif params[:mode] == "resolved_questions"
      if params[:order] == "questions_new"
        @questions = @search.result.includes(:user,:tag).page(params[:page]).per(10).where.not(best_answer_id: nil).order(created_at: "DESC")
      elsif params[:order] == "answers_desc"
        questions = @search.result.includes(:user,:tag).where.not(best_answer_id: nil).sort {|a,b| b.answers.size <=> a.answers.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
        
      elsif params[:format] == "answers_asc"
        questions = @search.result.includes(:user,:tag).where.not(best_answer_id: nil).sort {|a,b| a.answers.size <=> b.answers.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      elsif params[:format] == "evaluations_desc"
        questions = @search.result.includes(:user,:tag).where.not(best_answer_id: nil).sort {|a,b| b.evaluations.size <=> a.evaluations.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      else
        @questions = @search.result.includes(:user,:tag).page(params[:page]).per(10).where.not(best_answer_id: nil).order(created_at: "DESC")
      end
    
    else
      if params[:order] == "questions_new"
        @questions = @search.result.includes(:user,:tag).page(params[:page]).per(10).all.order(created_at: "DESC")
      elsif params[:order] == "answers_desc"
        questions = @search.result.includes(:user,:tag).all.sort {|a,b| b.answers.size <=> a.answers.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
        
      elsif params[:order] == "answers_asc"
        questions = @search.result.includes(:user,:tag).all.sort {|a,b| a.answers.size <=> b.answers.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      elsif params[:order] == "evaluations_desc"
        questions = @search.result.includes(:user,:tag).all.sort {|a,b| b.evaluations.size <=> a.evaluations.size}
        @questions = Kaminari.paginate_array(questions).page(params[:page]).per(10)
      else
        @questions = @search.result.includes(:user,:tag).page(params[:page]).per(10).all.order(created_at: "DESC")
      end
    end
    
    #検索をするとパラメータcountryの返り値が""になるため
    if params[:country] && params[:country] != ""
      @questions = @questions.select do |q|
        q.country.name == params[:country]
      end
      @questions = Kaminari.paginate_array(@questions).page(params[:page]).per(10)
    end

    if params[:tag] && params[:tag] != ""
      @questions = @questions.select do |q|
        q.tag.name == params[:tag]
      end
      @questions = Kaminari.paginate_array(@questions).page(params[:page]).per(10)
    end

  end


  # GET /questions/1 or /questions/1.json
  def show
    # before_action :set_question
    if @question.best_answer_id
      @bestanswer = Answer.find(@question.best_answer_id)
    end

    if user_signed_in?
      @answer = @question.answers.build(user_id: current_user.id)
    end
    impressionist(@question, nil, unique: [:session_hash])

  end

  def answer_request
    @users = current_user.matchers
 
    @question = Question.find(params[:id])
  end
  
  def create_request
    question = Question.find(params[:id])
    user = User.find(params[:user_id])
    notification = Notification.new(user_id: params[:user_id],message: params[:message],url: params[:url])
    if notification.save
      respond_to do |format|
        format.html { redirect_to question, notice: "#{user.username}に回答リクエストを送信しました。" }
      end
    else
      #saveできなかった場合
      format.html { render question, status: :unprocessable_entity }
     
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
        # TODO: 経験値機能の処理
        # current_user.get_exp(10)
        # current_user.check_level_up
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
        format.html { redirect_to @question, notice: "更新しました" }
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
      params.require(:question).permit(:user_id, :title, :body, :best_answer_id,:country_id,:tag_id,:image,:latitude,:longitude)
    end
end
