class Review < ApplicationRecord
  belongs_to :content
  validates :content, length: { minimum: 20 }
end
