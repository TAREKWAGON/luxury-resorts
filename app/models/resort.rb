class Resort < ApplicationRecord
  belongs_to :user
  has_many :feature_resorts


  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :feature, through: :feature_resorts
  has_many :bookings
  has_many :favorite_resorts
  has_many :favorited_by, through: :favorite_resorts, source: :user
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
