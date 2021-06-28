FactoryBot.define do
  factory :country_history do
    user_id { 1 }
    country_id { 1 }
    city_name { "MyString" }
    stay_begin { "2021-06-28" }
    stay_end { "2021-06-28" }
  end
end
