class TrendingController < ApplicationController
  before_action :authenticate_user!
  def index

    sel_location = session[:my_re]
    
    @news = Info.where(location: sel_location)
    @tools = Tool.where(location: sel_location)
    @tasks = Task.where(location: sel_location)
    @seeds = Seed.where(location: sel_location)
    @crops = Crop.where(location: sel_location)

    @notification = Notification.new

    @tool_usernames = {}
    @tools.each do |tool|
      user = User.find_by(id: tool.user_id)
      @tool_usernames[tool.id] = user.name if user
    end

    @task_usernames = {}
    @tasks.each do |task|
      user = User.find_by(id: task.user_id)
      @task_usernames[task.id] = user.name if user
    end 

    @seeds_usernames ={}
    @seeds.each do |seed|
      user = User.find_by(id: seed.user_id)
      @seeds_usernames[seed.id] = user.name if user
    end

    @crops_usernames ={}
    @crops.each do |crop|
      user = User.find_by(id: crop.user_id)
      @crops_usernames[crop.id] = user.name if user
    end

  end
end
