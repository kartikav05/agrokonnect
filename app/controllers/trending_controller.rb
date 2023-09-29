class TrendingController < ApplicationController
  def index
    sel_location = session[:my_re]
    @news = Info.where(location: sel_location)
    @tools = Tool.where(location: sel_location)
    @tasks = Task.where(location: sel_location)
    @notification = Notification.new

    @tool_usernames = {}
    @tools.each do |tool|
      user = User.find_by(id: tool.user_id)
      @tool_usernames[tool.id] = user.name if user
    end

    @tasks.each do |task|
      user = User.find_by(id: task.user_id)
      @task_usernames[task.id] = user.name if user
    end 

  end
end
