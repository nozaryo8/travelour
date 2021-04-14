FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "TEST_NAME#{n}"}
    sequence(:email) { |n| "TEST#{n}@gmail.com"}
    sequence(:password) {"11111111"}
  end
end
