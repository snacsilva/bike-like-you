# frozen_string_literal: true

class Vacancy < ApplicationRecord
  belongs_to :station
  has_one :bike

  after_create :create_bikes
  after_save :send_mail

  def create_bikes
    Bike.create vacancy_id: id
  end

  def full
    full = Vacancy.where(station_id: station_id, free: false).count
    full == count_vacancy_station
  end

  def empty
    empty = Vacancy.where(station_id: station_id, free: true).count
    empty == count_vacancy_station
  end

  def count_vacancy_station
    Vacancy.where(station_id: station_id).count
  end

  private

  def send_mail
    if full || empty
      (full ? VacancyMailer.full(self).deliver_now :
      VacancyMailer.empty(self).deliver_now)
    end
  end
end
