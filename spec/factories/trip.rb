FactoryBot.define do
  factory :trip do
    origin Faker::Number.digit
    bike_id Faker::Number.digit
    password "123456"
    # token Faker::Alphanumeric.alpha(number: 10)
  end
end


