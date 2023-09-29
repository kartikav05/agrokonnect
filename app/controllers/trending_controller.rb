class TrendingController < ApplicationController
  def index
    sel_location = session[:my_re]
    @news = Info.where(location: sel_location)
    @tools = Tool.where(location: sel_location)
    @tasks = Task.where(location: sel_location)
  end
end
