class Resort < ApplicationRecord
  belongs_to :user
  has_many :feature_resorts
  has_many :bookings
  has_many :favorites
  validates :name, presence: true
  validates :continent, presence: true
  validates :country, presence: true
  validates :address, presence: true
  validates :image, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :website, presence: true
end
