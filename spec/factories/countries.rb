FactoryBot.define do
  factory :country do
    sequence(:name) { |n| "TEST_name#{n}"}
    id {1}
    sequence(:continent_id) {continent}
  end
end
