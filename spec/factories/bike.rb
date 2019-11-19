FactoryBot.define do
  factory :bike do
    vacancy_id Faker::Number.digit
    with_problem  false
  end
end
