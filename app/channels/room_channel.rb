class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  # app/channels/room_channel.rb

def send_message(data)
  Message.create! user_id: data['id'], content: data['message']
  name = User.find(data['id']).name
  ActionCable.server.broadcast 'room_channel', { message: data['message'],name: name,id:data['id'] } 
end

end

