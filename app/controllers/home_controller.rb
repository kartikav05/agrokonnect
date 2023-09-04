class HomeController < ApplicationController
  def homepage
    if user_signed_in?
      id= current_user.id
      notifications = Notification.where(status: 'pending', user_id: id)
      @unread= notifications.length
      end
  end
end
