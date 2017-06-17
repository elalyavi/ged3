json.extract! excursion, :id, :name, :describe, :price, :city_id, :created_at, :updated_at
json.url excursion_url(excursion, format: :json)
