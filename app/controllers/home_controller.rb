class HomeController < ApplicationController
  def homepage
    if params[:Region]
    @selected_region= Region.find_by(name: params[:Region])
    session[:my_re] = @selected_region.name
    end
    if user_signed_in?
      id= current_user.id
      notifications = Notification.where(status: 'pending', user_id: id)
      $unread= notifications.length
      end
  end
end
