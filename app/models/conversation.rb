class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :users, through: :messages
  has_many :users, through: :participants

  def find_other_participant(current_user)
    participants.where.not(user: current_user).first.user
  end

  def self.find_share_conversation(user_one, user_two)
    current_conv = Conversation.joins(:participants).where(participants: {user: user_one})
    current_conv.select do |conversation|
      conversation.find_other_participant(user_one) == user_two
    end.first
  end
end
