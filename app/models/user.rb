class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :resorts
  has_many :favorites
  has_many :favorite_resorts, through: :favorites, source: :favorited, source_type: 'Resort'

  validates :password, presence: true

  def likes?(resort)
    favorite_resorts.any? { |r| r.id == resort.id }
  end
end
