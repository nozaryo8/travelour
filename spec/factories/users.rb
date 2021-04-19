FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "TEST_NAME"}
    sequence(:email) { |n| "TEST#{n}@gmail.com"}
    sequence(:password) {"11111111"}
    sequence(:image) {"aaaaaaaa.jpg"}
    sequence(:profile) {"こんにちは"}
  end
end
