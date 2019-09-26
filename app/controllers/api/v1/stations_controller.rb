class Api::V1::StationsController < ApplicationController
  respont_to :json
  before_action :set_station, only: %i[show edit update destroy]

  def index
    @stations = Station.all
  end

  def show; end

  private

    def set_station
      @station = Station.find(params[:id])
    end

end
