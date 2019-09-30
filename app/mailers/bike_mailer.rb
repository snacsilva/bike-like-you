# frozen_string_literal: true

class BikeMailer < ApplicationMailer
  before_action :load_bike

  def problem?
    @greeting = 'Hi'

    mail to: 'to@example.org',
         subject: 'Faulty bike'
  end

  private

  def load_bike
    @bike = Bike.find params[:id]
  end
end
