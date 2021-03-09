class Site < ApplicationRecord
  has_many :contents, dependent: :destroy
  validates :name, presence: true, uniqueness: { scope: :address, message: "should be unique per address" }
  validates :address, presence: true
  validates :description, presence: true
end
