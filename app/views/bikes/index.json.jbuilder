# frozen_string_literal: true

json.array! @bikes, partial: 'bikes/bike', as: :bike
