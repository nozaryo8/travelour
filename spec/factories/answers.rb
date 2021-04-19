FactoryBot.define do
  factory :answer do
    sequence(:body) { |n| "TEST_BODY#{n}"}
    association :question
    association :user
  end
end
