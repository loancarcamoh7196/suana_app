json.extract! claim, :id, :points, :quantity, :user_id, :address_id, :created_at, :updated_at
json.url claim_url(claim, format: :json)
