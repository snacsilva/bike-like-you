class Api::V1::BikesController < ApplicationController
  before_action :set_bike, only: %i[show edit update destroy]

  def index
    @bikes = Bike.all
    render json: @stations, :methods => [:vacancies_free_count, :vacancies_occupied_count]  
  end

  def show; end

  def catch
  end

  def give_back
  end

  private

    def set_bike
      @bike = Bike.find(params[:id])
    end

    def bike_params
      params.require(:bike).permit(:vacancy_id, :with_problem)
    end
end
