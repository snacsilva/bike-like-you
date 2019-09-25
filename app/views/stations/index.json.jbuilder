# frozen_string_literal: true

json.array! @stations, partial: 'stations/station', as: :station
