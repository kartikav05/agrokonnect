json.extract! info, :id, :news, :location, :title, :created_at, :updated_at
json.url info_url(info, format: :json)
