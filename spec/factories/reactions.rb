FactoryBot.define do
  factory :reaction do
    sequence(:body) {"TEST_BODY"}
    association :answer
    association :user
  end
end
