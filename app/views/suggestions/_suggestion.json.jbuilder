json.extract! suggestion, :id, :subject, :content, :observation, :type, :user_id, :created_at, :updated_at
json.url suggestion_url(suggestion, format: :json)
