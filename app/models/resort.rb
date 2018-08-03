class Resort < ApplicationRecord
  belongs_to :user
  has_many :feature_resorts
<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 8c8bbc08b0a9d9c0a2b894f62144382bc8ca47b5

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

<<<<<<< HEAD
=======
=======

>>>>>>> 8c8bbc08b0a9d9c0a2b894f62144382bc8ca47b5
  has_many :features, through: :feature_resorts
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
<<<<<<< HEAD
>>>>>>> 16461f2e61910502b02d3f37f6823c4927b119ad
=======

>>>>>>> 8c8bbc08b0a9d9c0a2b894f62144382bc8ca47b5
end
