json.extract! task, :id, :taskname, :taskdesc, :startdate, :enddate, :componsation, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
