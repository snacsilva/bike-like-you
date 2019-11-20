# encoding: UTF-8
require 'spec_helper'

RSpec.describe Bike, type: :model do
  before do 
    @current_user = FactoryBot.build(:user)
    @station = FactoryBot.create(:station)
    @vacancy = FactoryBot.create(:vacancy)
    @bike =  FactoryBot.create(:bike,  vacancy_id: @vacancy.id)
  end

  describe 'create_trip_and_empty_vacancy' do
    it 'Trip valid' do
      trip = Trip.create origin: @bike.vacancy_id, bike_id: @bike.id,  started_at: Time.now , user_id: @current_user.id
      expect(trip).to be_valid
    end

    it 'Receive update' do
      @bike.vacancy.update_attribute :free, true
    end
  end

   it 'update_trip_and_occupy_vacancy' do
        expect_any_instance_of(Vacancy).to receive(:update_attribute).with(:free, false)
        expect_any_instance_of(Bike).to receive(:update_bike).with(@bike, @vacancy.id, false)
   end

  it 'update_bike' do
    @bike.update vacancy_id: @vacancy.id
     expect(@bike.vacancy_id).to eq(@vacancy.id)
  end
end