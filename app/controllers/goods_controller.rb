class GoodsController < ApplicationController
  def create
    #current_user.goodsにすることによってgoodをcreateする時に自動でuser_idが代入されて生成される
    @good = current_user.goods.create(answer_id: params[:answer_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @answer =  Answer.find(params[:answer_id])
    @good = current_user.goods.find_by(answer_id: @answer.id)
    @good.destroy
    redirect_back(fallback_location: root_path)
  end
end
