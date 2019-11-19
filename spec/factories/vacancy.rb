FactoryBot.define do
  factory :vacancy do
    station_id Faker::Number.digit
    free  false
  end
end
