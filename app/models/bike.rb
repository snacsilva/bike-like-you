# frozen_string_literal: true

class Bike < ApplicationRecord
  belongs_to :vacancy

  def self.create_trip_and_empty_vacancy
    Trip.create origin: @bike.vacancy.station_id, bike_id: @bike.id, started_at: Time.now()
    vacancy.upda
  end
end
