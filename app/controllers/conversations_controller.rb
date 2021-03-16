class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def index
    @conversations = Conversation.joins(:participants).where(participants: {user: current_user}).distinct
    @nearby_users = User.all
  end

  def create
    @conversation = Conversation.create
    Participant.create(user: current_user, conversation: @conversation)
    Participant.create(user: User.find(params[:user_id]), conversation: @conversation)
    redirect_to @conversation
  end
end
