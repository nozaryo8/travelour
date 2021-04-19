require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    @user = build(:user)
  end

  context 'ユーザー新規登録ができるとき' do
    it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do
      visit root_path
      expect(page).to have_link "らくらくログイン", href: users_guest_log_in_path
      expect(page).to have_link "ログイン", href: user_session_path
      expect(page).to have_link 'サインアップ', href: new_user_registration_path 

      visit new_user_registration_path
      fill_in 'user_username', with: @user.username
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      fill_in 'user_password_confirmation', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq questions_path
      expect(page).to have_link '質問する！', href: new_question_path
      expect(page).to have_link "質問一覧", href: questions_path
      expect(page).to have_content "アカウント"
    end
  end

  context 'ユーザー新規登録ができないとき' do
    it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
      visit new_user_registration_path
      # 空のユーザー情報を入力する
      fill_in 'user_username', with: ''
      fill_in 'user_email', with: ''
      fill_in 'user_password', with: ''
      fill_in 'user_password_confirmation', with: ''
      # 新規登録ボタンを押してもユーザーモデルのカウントは上がらない
      expect  do
        find('input[name="commit"]').click
      end.to change { User.count }.by(0)
      # 新規登録ページへ戻される
      expect(current_path).to eq '/users'
    end
  end
end

RSpec.describe 'ログイン', type: :system do
  before do
    @user = create(:user)
  end
  context 'ログインができるとき' do
    it '保存されているユーザーの情報と合致すればログインができる' do
      visit new_user_session_path
      fill_in 'user_email', with: @user.email
      fill_in 'user_password', with: @user.password
      find('input[name="commit"]').click

      expect(current_path).to eq questions_path
      expect(page).to have_no_link "らくらくログイン", href: users_guest_log_in_path
      expect(page).to have_no_link "ログイン", href: user_session_path
      expect(page).to have_no_link 'サインアップ', href: new_user_registration_path 
    end
  end
  context 'ログインができないとき' do
    it '保存されているユーザーの情報と合致しないとログインができない' do
      visit new_user_session_path

      fill_in 'user_email', with: ''
      fill_in 'user_password', with: ''
      find('input[name="commit"]').click
      expect(current_path).to eq new_user_session_path
    end
  end
end
