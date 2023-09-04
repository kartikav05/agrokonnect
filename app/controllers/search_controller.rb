class SearchController < ApplicationController
  def results
    @tool_results = Tool.where("toolname LIKE ?", "%#{params[:title]}%")
    @task_results = Task.where("taskname LIKE ?", "%#{params[:title]}%")
  end
end
