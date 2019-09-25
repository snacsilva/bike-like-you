json.extract! trip, :id, :origin, :destination, :bike_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
