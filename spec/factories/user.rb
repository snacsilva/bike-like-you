FactoryBot.define do
  factory :user do
    name Faker::FunnyName.name
    email Faker::Internet.email
    password "123456"
    # token Faker::Alphanumeric.alphanumeric(number: 10)
  end
end


