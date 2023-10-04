module ApplicationHelper
    def unread
        if user_signed_in? 
            id = current_user.id
            notifications = Notification.where(status: 'pending', user_id: id)
            unread_length = notifications.length
            return unread_length
          end
    end
end
