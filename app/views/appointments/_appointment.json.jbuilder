json.extract! appointment, :id, :data, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
