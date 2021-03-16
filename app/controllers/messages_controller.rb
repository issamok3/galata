class MessagesController < ApplicationController
  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    if @message.save

      # Create the notifications
      (@conversation.users.uniq - [current_user]).each do |user|
        Notification.create(recipient: user, actor: current_user, action: "posted", notifiable: @message)
      end

      redirect_to conversation_path(@conversation, anchor: "message-#{@message.id}")
    else
      render "conversations/show"
    end

    ConversationChannel.broadcast_to(
      @conversationChannel,
      render_to_string(partial: "message", locals: { message: @message })
    )
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
