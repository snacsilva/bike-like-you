# frozen_string_literal: true

class Api::V1::BikesController < ApplicationController
  before_action :set_bike, only: %i[show catch give_back]
  before_action :get_trip, only: %i[give_back catch]
  skip_before_action :verify_authenticity_token

  def index
    @bikes = Bike.all
    render json: @bikes
  end

  def show; end

  def catch
    if !@bike.with_problem
      if @trip
        @message = 'This bike is in a trip. Choose another.'
      else
        
        @message = 'Bike catch! Congrats!'
      end
      render json: { status: 'ok', code: 200, message: @message }
    else
      render json: { status: 'error', code: 3000, message: 'I`m sorry, but bike has a problem. You can`t catch her.' }
    end
  end

  def give_back 
    if @trip
      if @trip.origin != params[:destination]
        @trip.update_attributes destination: params[:destination], finished_at: Time.now(), traveled_distance: params[:distance]
        @message = 'Ok. Thanks for use #BikeLikeYou'
      else
        @message = 'Station destination is the same as station origin. Please return the bike to another station.'
      end
      render json: { status: 'ok', code: 200, trip: @trip, message: @message }
    else
      render json: { status: 'error', code: 3000, message: 'I`m sorry, but the bike isn`t in a trip. You can`t give her back.' }
    end
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def get_trip
    @trip = Trip.find_by(bike_id: @bike.id, destination: nil)
  end

  def bike_params
    params.require(:bike).permit(:vacancy_id, :with_problem)
  end
end
