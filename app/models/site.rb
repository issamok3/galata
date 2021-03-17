class Site < ApplicationRecord
  acts_as_taggable_on :category

  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :contents, dependent: :destroy
  validates :name, presence: true, uniqueness: { scope: :address, message: "should be unique per address" }
  validates :address, presence: true
  validates :description, presence: true
end
