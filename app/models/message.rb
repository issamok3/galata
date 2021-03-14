class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation
  validates :content, presence: true
  validates :content, length: { minimum: 1 }
end
