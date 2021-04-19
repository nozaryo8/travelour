FactoryBot.define do
  factory :question do
    sequence(:title) { |n| "TEST_title#{n}"}
    sequence(:body) { |n| "TEST_body#{n}"}
    sequence(:tag_id) {rand(1..12)}
    sequence(:country_id) {rand(1..12)}
    
    association :user
    association :country
    association :tag
  end
end
