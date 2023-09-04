class ListingsController < ApplicationController
  def mylistings
    @mytools = current_user.tools
    @mytasks = current_user.tasks
  end
end
