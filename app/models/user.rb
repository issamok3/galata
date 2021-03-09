class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :contents, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :conversations, through: :messages
  validates :username, presence: true, uniqueness: true
  validates :full_name, presence: true
  validates :address, presence: true
  validates :locatable, presence: true
end
