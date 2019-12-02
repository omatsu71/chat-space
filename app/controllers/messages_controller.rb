class MessagesController < ApplicationController

  def index
    @message = Message.new
    @messages = @group.messages.includes(:user)
  end

  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
  
end
