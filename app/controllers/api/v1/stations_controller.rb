# frozen_string_literal: true

class Api::V1::StationsController < ApplicationController
  before_action :set_station, only: %i[show edit update destroy]
  before_action :load_user

  def index
    @stations = Station.all
    render json: @stations, methods: %i[vacancies_free_count vacancies_occupied_count bikes_on_station]
  end

  def show; end

  private

  def set_station
    @station = Station.find(params[:id])
  end

  def load_user
    if params[:auth_token].present?
      @current_user = User.where(token: params[:auth_token]).try(:first)
      render json: { status: 'Unauthorized', code: 401, message: 'Token invalid!' } unless @current_user
    else
      render json: { status: 'Unauthorized', code: 401, message: 'Token invalid!' }
    end
  end

end
