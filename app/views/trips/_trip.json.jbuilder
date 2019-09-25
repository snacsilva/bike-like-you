json.extract! trip, :id, :origin, :destination, :bike_id, :started_at, :finished_at, :traveled_distance, :created_at, :updated_at
json.url trip_url(trip, format: :json)
