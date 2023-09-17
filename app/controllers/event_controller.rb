class EventController < ApplicationController
  def index
    id = current_user.id
    @events = [] 
  
    user_notifications = Notification.where(status: 'accepted', user_id: id)
    requester_notifications = Notification.where(status: 'accepted', requester_id: id)
  
    user_notifications.each do |noti|
      tool = Tool.find(noti.tool_id)
      @events << {
        title: "#{tool.toolname} needs to be collected on end date",
        start: tool.fromdate,
        end: tool.todate,
        color: "blue"
      }
    end
  
 
      requester_notifications.each do |noti|
        tool = Tool.find(noti.tool_id)
        @events << {
          title: "#{tool.toolname} needs to returned on end date",
          start: tool.fromdate,
          end: tool.todate,
          color: "red"
        }
      end
  
    render json: @events

  end

  def calendar
  end
end
