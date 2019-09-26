# frozen_string_literal: true

class Vacancy < ApplicationRecord
  belongs_to :station
  has_one :bike

  after_create :create_bikes

  def create_bikes
    Bike.create vacancy_id: id
  end
end
