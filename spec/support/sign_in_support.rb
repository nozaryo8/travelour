module LoginSupport
  # 利用者がログインする
  def sign_in_as(user)
    visit root_path
    click_link "ログイン"
    fill_in "user_email", with: user.email
    fill_in "user_password", with: user.password
    click_button "ログイン"
  end
end

# RSpecの設定 LoginSupport をinclude
RSpec.configure do |config|
  config.include LoginSupport
end