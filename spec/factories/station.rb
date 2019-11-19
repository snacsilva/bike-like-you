FactoryBot.define do
  factory :station do
    name Faker::DcComics.heroine
    vacancies_bike Faker::Number.digit
    # token Faker::Alphanumeric.alphanumeric(number: 10)
  end
end


