class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def index
    @conversations = Conversation.all
    @nearby_users = User.near(current_user.address, 10)
  end

  def create
    @conversation = Conversation.create
    Participant.create(user: current_user, conversation: @conversation)
    Participant.create(user: User.find(params[:user_id]), conversation: @conversation)
    redirect_to @conversation
  end
end
