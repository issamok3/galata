class Content < ApplicationRecord
  belongs_to :site
  belongs_to :user
  validates :title, presence: true
  has_many :reviews, dependent: :destroy
  # validates :format, presence: true, inclusion: { in: %w[.txt .mp3 .mpg4],
  #                                                 message: "this is not a valid format" }
  # enum type: [:video, :photo, :article, :audio]
end
