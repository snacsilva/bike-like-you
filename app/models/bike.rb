# frozen_string_literal: true

class Bike < ApplicationRecord
  belongs_to :vacancy

  def self.create_trip_and_empty_vacancy(bike)
    Trip.create origin: bike.vacancy.station_id, bike_id: bike.id, started_at: Time.now, user_id: 
    bike.vacancy.update_attribute :free, true
    update_bike(bike, 0)
  end

  def self.update_trip_and_occupy_vacancy(trip, params, bike)
    vacancy = Vacancy.where(station_id: params[:destination], free: true).first
    raise 'There is no vacancy at this station. Please apply for another one that has vacancies.' unless vacancy

    vacancy.update_attribute :free, false
    update_bike(bike, vacancy.id, params[:with_problem])
    trip.update destination: params[:destination], finished_at: Time.now, traveled_distance: params[:distance]
    send_bike_broken(bike)
  end

  def self.update_bike(bike, vacancy_id, problem = false)
    bike.update vacancy_id: vacancy_id, with_problem: problem
  end

  private

  def self.send_bike_broken(bike)
    BikeMailer.with(id: bike.id).problem?.deliver_now if bike[:with_problem]
  end
end
