require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    question = build(:question)
    question.save
    @answer = build(:answer)
    @answer.question = question
  end
  describe '回答' do
    context '回答が保存できる場合' do
      it '回答が入力されていれば投稿できる' do
        expect(@answer).to be_valid
      end

      it '回答が入力されていなければ投稿できない' do
        @answer.body = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include('回答を入力してください')
      end
    end
  end

  describe 'アソシエーション' do
    let(:association) do
       described_class.reflect_on_association(target)
    end

    context 'Answerモデルとの関係' do
      let(:target) { :goods }
      it '1:多' do
        expect(association.macro).to eq :has_many
      end
      it '結合するモデルのクラス名：Good' do
        expect(association.class_name).to eq 'Good'
      end
    end

    context 'Reactionモデルとの関係' do
      let(:target) { :reactions }
      it '1:多' do
        expect(association.macro).to eq :has_many
      end
      it '結合するモデルのクラス名：Reaction' do
        expect(association.class_name).to eq 'Reaction'
      end
    end
  end
end
