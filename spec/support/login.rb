def login_as(user)
  visit root_path
  click_link "ログイン"
  fill_in "user_email", with: user.email
  fill_in "user_password", with: user.password
  click_button "ログイン"
end

RSpec.shared_context 'when login required' do
  let(:user) { create(:user) }
  before do
    login_as(user)
  end

  context 'when current_user is nil' do
    before do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(nil)
    end

    it 'depends on your spec' do
      # actual spec goes here...
    end
  end
end

RSpec.configure do |config|
  config.include_context 'when login required', :require_login
end