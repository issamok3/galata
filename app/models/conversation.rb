class Conversation < ApplicationRecord
  has_many :messages
  has_many :participants
  has_many :users, through: :messages
  has_many :users, through: :participants

  def find_other_participant(current_user)
    raise
    participants.where.not(user: current_user).first.user
  end
end
