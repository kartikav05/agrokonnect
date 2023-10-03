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
  #Listings for Homepage
  @Tasks = Task.all.limit(3)
  @Tools = Tool.all.limit(3)
  @Seeds = Seed.all.limit(3)
  @Crops = Crop.all.limit(3)
  @Infos = Info.all.limit(4)

  end
end
