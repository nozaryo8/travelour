FactoryBot.define do
  factory :tag do
    sequence(:name) { |n| "TEST_tag#{n}"}
  end
end
