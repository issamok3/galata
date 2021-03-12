class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def index
    @conversations = Conversation.all
  end

  def create
    @conversation = Conversation.new
    @message = Message.new(message_params)
    @conversation.message = @message
    @message.user = current_user
    if @conversation.save
       redirect_to conversation_path(@conversation, anchor: "message-#{@message.id}")
     else
       render "conversations/show"
     end
    redirect_to "conversations/index"
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
