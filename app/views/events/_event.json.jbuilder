json.extract! event, :id, :title, :start, :end, :user_id, :req_mail, :created_at, :updated_at
json.url event_url(event, format: :json)
