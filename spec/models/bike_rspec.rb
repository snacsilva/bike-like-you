# encoding: UTF-8
require 'spec_helper'

RSpec.describe Bike, type: :model do
  before do 
    @current_user = FactoryBot.create(:user)
    @vacancy = FactoryBot.create(:station)
    @vacancy = FactoryBot.create(:vacancy)
    @bike =  FactoryBot.create(:bike)
  end

  it 'create_trip_and_empty_vacancy' do
    trip = Trip.create origin: @bike.vacancy_id, bike_id: @bike.id,  started_at: Time.now , user_id: @current_user.id
    expect(trip).to eq(trip)
  end

  it 'update_bike' 
     
  end
end