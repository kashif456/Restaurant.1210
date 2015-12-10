json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :reservation_time, :restaurant_id
  json.url reservation_url(reservation, format: :json)
end
