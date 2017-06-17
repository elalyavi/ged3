json.extract! itinerary, :id, :name, :desc, :price, :city_id, :created_at, :updated_at
json.url itinerary_url(itinerary, format: :json)
