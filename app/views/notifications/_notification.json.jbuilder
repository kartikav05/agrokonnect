json.extract! notification, :id, :user_id, :content, :status, :task_id, :tool_id, :requester_id, :created_at, :updated_at
json.url notification_url(notification, format: :json)
