# frozen_string_literal: true

class Bike < ApplicationRecord
  belongs_to :vacancy

  def self.create_trip_and_empty_vacancy(bike)
    Trip.create origin: bike.vacancy.station_id, bike_id: bike.id, started_at: Time.now
    bike.vacancy.update_attribute :free, true
    bike.update_attribute :vacancy_id, 0
  end

  def self.update_trip_and_occupy_vacancy(trip, params, bike)
    vacancy = Vacancy.where(station_id: params[:destination], free: true).first
    raise 'There is no vacancy at this station. Please apply for another one that has vacancies.' unless vacancy

    vacancy.update_attribute :free, false
    bike.update_attributes vacancy_id: vacancy.id, with_problem: params[:with_problem]
    trip.update_attributes destination: params[:destination], finished_at: Time.now, traveled_distance: params[:distance]
  end
end
