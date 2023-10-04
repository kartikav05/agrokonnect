class SearchController < ApplicationController
  def results
    @tool_results = Tool.where("toolname LIKE ?", "%#{params[:title]}%")
    @task_results = Task.where("taskname LIKE ?", "%#{params[:title]}%")
    @crops_results = Crop.where("name LIKE ?", "%#{params[:title]}%")
    @seeds_results = Seed.where("name LIKE ?", "%#{params[:title]}%")
  end 
end
