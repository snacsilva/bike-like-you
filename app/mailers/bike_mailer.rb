# frozen_string_literal: true

class BikeMailer < ApplicationMailer
  before_action :load_bike

  def problem?
    @greeting = 'Hi'

    mail to: 'bikelikeyou@gmail.com',
         subject: 'Broken bike'
  end

  private

  def load_bike
    @bike = Bike.find params[:id]
  end
end
