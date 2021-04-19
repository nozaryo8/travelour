require 'rails_helper'

RSpec.describe Question, type: :model do
  before do

    @question = build(:question)
    tag = create(:tag)
    country = build(:country)
    continent = create(:continent)
    country.continent = continent
    country.save
    @question.tag = tag
    @question.country = country

  end

  describe '投稿の保存' do
    context '投稿が保存できる場合' do
      it '全てのフォームに情報が入力されていれば投稿できる' do
        expect(@question).to be_valid
      end
    end

    context '投稿が保存できない場合' do
      it 'タグがないと投稿は保存できない' do
        @question.tag = nil
        @question.valid?
        expect(@question.errors.full_messages).to include('質問の種類を入力してください')
      end

      it '国がないと投稿は保存できない' do
        @question.country = nil
        @question.valid?
        expect(@question.errors.full_messages).to include('エリアを入力してください')
      end 
      it 'タイトルが空だと投稿は保存できない' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include('タイトルを入力してください')
      end
      it 'タイトルが41文字以上だと投稿は保存できない' do
        @question.title = 'a' * 41
        @question.valid?
        expect(@question.errors.full_messages).to include('タイトルは40文字以内で入力してください')
      end
      it '内容が空だと投稿は保存できない' do
        @question.body = ''
        @question.valid?
        expect(@question.errors.full_messages).to include('内容を入力してください')
      end

    end
  end
  describe 'アソシエーション' do
    let(:association) do
       described_class.reflect_on_association(target)
    end

    context 'Evaluationモデルとの関係' do
      let(:target) { :evaluations }
      it '1:多' do
        expect(association.macro).to eq :has_many
      end
      it '結合するモデルのクラス名：Evaluation' do
        expect(association.class_name).to eq 'Evaluation'
      end
    end

    context 'Answersモデルとの関係' do
      let(:target) { :answers }
      it '1:多' do
        expect(association.macro).to eq :has_many
      end
      it '結合するモデルのクラス名：Answers' do
        expect(association.class_name).to eq 'Answer'
      end
    end
  end
end
