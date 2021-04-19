require 'rails_helper'

RSpec.describe "新規投稿", type: :system do
  before do
    @user = create(:user)
    @tag = create(:tag)
    @question = build(:question)
    @country = build(:country)
    @continent = create(:continent)
    @country.continent = @continent
    @country.save
 
  end

  context '新規投稿ができるとき' do
    it 'ログインしたユーザーは新規投稿できる' do
      sign_in_as @user 
      
      click_on '質問する！'
      expect(current_path).to eq new_question_path
      
      find("#question_continent").find('option[value="1"]').select_option
      find("#question_country_id").find('option[value="1"]').select_option
      fill_in 'question_body', with: @question.body
      fill_in 'question_title', with: @question.title
      
      all('input[name="question[tag_id]"]')[0].click
      
      find('input[name="commit"]').click
      click_on '質問一覧'
      expect(current_path).to eq questions_path
      expect(page).to have_content(@question.title)

    end
  end

  context '新規投稿ができないとき' do
    it 'ログインしていないと新規投稿ページに遷移できない' do
      # トップページに遷移する
      visit questions_path
      # 新規投稿ページへのリンクがない
      expect(page).to have_no_content('質問する！')
    end

    it '投稿内容が空だと投稿できない' do
      # ログインする
      sign_in_as @user

      click_on '質問する！'
      expect(current_path).to eq new_question_path

      # フォームが空のまま、投稿ボタンを押してもTweetモデルのカウントが変わらない
      find("#question_continent").find('option[value="1"]').select_option
      find("#question_country_id").find('option[value="1"]').select_option
      fill_in 'question_body', with: ""
      fill_in 'question_title', with: ""
      expect  do
        find('input[name="commit"]').click
      end.to change { Question.count }.by(0)
      
    end
  end
end
RSpec.describe '投稿内容の編集', type: :system do
  before do
    @user1 = create(:user)
    @user2 = create(:user)
    @tag = create(:tag)
    @country = build(:country)
    @continent = create(:continent)
    @country.continent = @continent
    @country.save
    @question1 = build(:question)
    @question1.country = @country
    @question1.user = @user1
    @question1.tag = @tag
    @question1.save
    @question2 = build(:question)
    @question2.country = @country
    @question2.user = @user2
    @question2.tag = @tag
    @question2.save
    
  end

  context '投稿内容が編集できるとき' do
    it 'ログインしたユーザーは、自分が投稿した投稿内容を編集ができる' do
      sign_in_as (@question1.user)
      
      visit question_path(@question1)
      find_link('編集').click
      expect(current_path).to eq edit_question_path(@question1)
      expect(find('#question_title').value).to eq @question1.title
      expect(find('#question_body').value).to eq @question1.body
      find("#question_continent").find('option[value="1"]').select_option
      find("#question_country_id").find('option[value="1"]').select_option
      all('input[name="question[tag_id]"]')[0].click
      fill_in 'question_title', with: "編集OK!!"
      find('input[name="commit"]').click
      click_on '質問一覧'
      expect(current_path).to eq questions_path
      expect(page).to have_content("編集OK")
    end
  end
  context '投稿内容が編集できないとき' do
    it 'ログインしたユーザーは、自分以外が投稿した投稿の編集画面には遷移できない' do
      # 投稿1を投稿したユーザーでログインする
      sign_in_as (@question1.user)
      # 投稿2の詳細ページへ遷移する
      visit question_path(@question2)
      expect(current_path).to eq question_path(@question2)
      # 投稿2に編集ボタンがない
      expect(page).to have_no_link '編集', href: edit_question_path(@question2)
    end
    it 'ログインしていないと、投稿の編集画面には遷移できない' do
      # トップページにいる
      visit question_path(@question1)
      # 投稿1の詳細ページへ遷移する
      # 投稿1に編集ボタンがない
      expect(page).to have_no_link '編集', href: edit_question_path(@question1)
    end
  end
end

RSpec.describe '投稿の削除', type: :system do
  before do
    @user1 = create(:user)
    @user2 = create(:user)
    @tag = create(:tag)
    @country = build(:country)
    @continent = create(:continent)
    @country.continent = @continent
    @country.save
    @question1 = build(:question)
    @question1.country = @country
    @question1.user = @user1
    @question1.tag = @tag
    @question1.save
    @question2 = build(:question)
    @question2.country = @country
    @question2.user = @user2
    @question2.tag = @tag
    @question2.save
  end

  context '投稿の削除ができるとき' do
    it 'ログインしたユーザーは、自らの投稿を削除できる' do
      sign_in_as (@question1.user)
      visit question_path(@question1)
      accept_alert do
        find_link('削除').click
      end
      expect(page).to have_no_content(@question1.title)
    end
    it 'ログインしていないと、投稿の削除ボタンがない' do
      visit question_path(@question1)
      expect(page).to have_no_link '削除', href: question_path(@question1)
    end
  end
end