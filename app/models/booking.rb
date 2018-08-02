class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  validates :user_id, presence: true
  validates :resort_id, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :total_price, presence: true
end
