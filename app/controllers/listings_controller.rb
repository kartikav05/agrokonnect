class ListingsController < ApplicationController
  def mylistings
    @mytools = current_user.tools
    @mytasks = current_user.tasks
    @myseeds = current_user.seeds
    @mycrops = current_user.crops
  end
end
