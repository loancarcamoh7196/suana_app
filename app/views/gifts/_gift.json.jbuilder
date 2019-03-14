json.extract! gift, :id, :name, :description, :points, :available, :quantity, :created_at, :updated_at
json.url gift_url(gift, format: :json)
