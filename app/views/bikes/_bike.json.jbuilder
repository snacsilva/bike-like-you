# frozen_string_literal: true

json.extract! bike, :id, :vacancy_id, :with_problem, :created_at, :updated_at
json.url bike_url(bike, format: :json)
