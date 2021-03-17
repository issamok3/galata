class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :users, through: :messages
  has_many :users, through: :participants

  def find_other_participant(current_user)
    participants.where.not(user: current_user).first.user
  end
end
