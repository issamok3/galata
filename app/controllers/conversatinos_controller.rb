class ConversatinosController < ApplicationController
  def show
    @conversation = Conversation.find(params[:id])
  end
end
