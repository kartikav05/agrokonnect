class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :task,optional: true
  belongs_to :tool,optional: true


  def self.notice

    expiry_tools = Tool.where("todate = ?", Date.tomorrow)
  
    expiry_tools.each do |tool|

    requester = Notification.find_by(user_id: tool.user_id)


     Notification.create!(
        user_id: requester.requester_id,
        content: "#{tool.toolname} you borrowd needs to be returned tommorow.",
        status: "pending",
        tool_id: tool.id,
        requester_id: tool.user_id
      )
     
      Notification.create!(
        user_id: tool.user_id,
        content: "#{tool.toolname} you rented out needs to be collected tomorrow.",
        status: "pending",
        tool_id: tool.id,
        requester_id:requester.requester_id
      )

puts 'notification sent'
    
 
    end
  end

end
