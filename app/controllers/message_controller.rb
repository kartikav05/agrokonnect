class MessageController < ApplicationController
  def index
    @messages = Message.order(created_at: :desc).limit(10).reverse
  end
end
