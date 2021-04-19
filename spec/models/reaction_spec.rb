require 'rails_helper'

RSpec.describe Reaction, type: :model do
  before do
    answer = build(:answer)
    @reaction = build(:reaction)
    @reaction.answer = answer
  end
  describe 'コメント' do
    context 'コメントが保存できる場合' do
      it 'コメントが入力されていれば投稿できる' do
        expect(@reaction).to be_valid
      end

      it 'コメントが入力されていなければ投稿できない' do
        @reaction.body = nil
        @reaction.valid?
        expect(@reaction.errors.full_messages).to include('コメントを入力してください')
      end
    end
  end
end
