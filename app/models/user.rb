class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :favorites
  has_many :resorts
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :is_owner, presence: true
end
