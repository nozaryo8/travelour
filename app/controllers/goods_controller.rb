class GoodsController < ApplicationController
  protect_from_forgery except: [:destroy,:create]
  def create
    
    #current_user.goodsにすることによってgoodをcreateする時に自動でuser_idが代入されて生成される
    @good = current_user.goods.create(answer_id: params[:answer_id])
    @answer = Answer.find(params[:answer_id])
    render json:{
      count: @answer.goods.count
    }
  end

  def destroy
    @answer =  Answer.find(params[:answer_id])
    @good = current_user.goods.find_by(answer_id: @answer.id)
    @good.destroy
    render json:{
      count: @answer.goods.count
    }
  end
end
