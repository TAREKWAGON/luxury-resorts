class Resort < ApplicationRecord
  belongs_to :user
  has_many :feature_resorts

<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> b03895687e974b34252f364ebe3efda05c1e82ed

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

<<<<<<< HEAD
=======
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

>>>>>>> 8e4584c2b1e4f66ac2d64ebbecfdfec68a82e800
=======

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


>>>>>>> b03895687e974b34252f364ebe3efda05c1e82ed
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
<<<<<<< HEAD
=======

>>>>>>> 8e4584c2b1e4f66ac2d64ebbecfdfec68a82e800
=======

>>>>>>> b03895687e974b34252f364ebe3efda05c1e82ed
end
