class Resort < ApplicationRecord
  belongs_to :user

  has_many :feature_resorts

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

end
