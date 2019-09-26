class Api::V1::StationsController < ApplicationController
  before_action :set_station, only: %i[show edit update destroy]

  def index
    @stations = Station.all
    render json: @stations, methods: [:vacancies_free_count, :vacancies_occupied_count, :bikes_on_station]
  end

  def show; end

  private

    def set_station
      @station = Station.find(params[:id])
    end

end
