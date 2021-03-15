class Conversation < ApplicationRecord
  has_many :messages
  has_many :participants

  def find_other_participant(current_user)
    participants.where.not(user: current_user).first.user
  end
end
