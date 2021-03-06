class ReactionsController < ApplicationController
  before_action :set_reaction, only: %i[ show edit update destroy ]
  protect_from_forgery except: :new
  # GET /reactions or /reactions.json
  def index
    answer = Answer.find(params[:answer_id])
    @reaction = answer.reactions.build(user_id: current_user.id)
  end

  # GET /reactions/1 or /reactions/1.json
  def show
  end

  # GET /reactions/new
  def new
    @answer = Answer.find(params[:answer_id])
    answer = Answer.find(params[:answer_id])
    @reaction = answer.reactions.build(user_id: current_user.id)
    
    respond_to do |format|
      format.html 
      format.js
    end
    # @reaction = answer.reactions.build(user_id: current_user.id)
  end

  # GET /reactions/1/edit
  def edit
  end

  # POST /reactions or /reactions.json
  def create
   
    answer = Answer.find(params[:answer_id])
    @reaction = answer.reactions.build(reaction_params)
    
    respond_to do |format|
      if @reaction.save
        format.html { redirect_to answer.question, notice: "コメントを送信しました。" }
        format.json { render :show, status: :created, location: @reaction }
        format.js {
          flash[:notice] = "コメントを送信しました"
        }
        #お知らせを作成
          #質問者が回答者に対してコメントした場合回答者にお知らせする
        if @reaction.user_id == answer.question.user_id
          Notification.new(user_id: answer.user_id,message: "#{@reaction.user.username}さんが、あなたにコメントしました。",
            url: "/questions/#{answer.question_id}").save
        else
          #回答者が質問者に対してコメントした場合質問者にお知らせする
          Notification.new(user_id: answer.question.user_id,message: "#{answer.user.username}さんが、あなたにコメントしました。",
            url: "/questions/#{answer.question_id}").save
        end

      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reactions/1 or /reactions/1.json
  def update
    respond_to do |format|
      if @reaction.update(reaction_params)
        format.html { redirect_to @reaction, notice: "Reaction was successfully updated." }
        format.json { render :show, status: :ok, location: @reaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reactions/1 or /reactions/1.json
  def destroy
    @reaction.destroy
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path , notice: "コメントを削除しました。" }
      format.json { head :no_content }
      format.js { 
        flash[:notice] = "コメントを削除しました" 
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reaction
      @reaction = Reaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reaction_params
      params.require(:reaction).permit(:user_id, :answer_id, :body)
      
    end
end
