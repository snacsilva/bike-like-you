# frozen_string_literal: true

class Vacancy < ApplicationRecord
  belongs_to :station
  has_many :bikes
end
