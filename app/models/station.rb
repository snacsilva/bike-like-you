# frozen_string_literal: true

class Station < ApplicationRecord
  has_many :vacancies

  def vacancies_free_count
    vacancies.where(free: true).count
  end

  def vacancies_occupied_count
    vacancies.where(free: false).count
  end

  def bikes_on_station
    vacancies.map(&:bike)
  end
end
