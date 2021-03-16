class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :notifications, foreign_key: :recipient_id
  has_many :contents, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :conversations, through: :participants
  has_many :conversations, through: :messages
  validates :username, presence: true, uniqueness: true
  validates :full_name, presence: true
  validates :location, presence: true
  validates :locatable, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
