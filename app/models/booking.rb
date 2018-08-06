class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :resort

  validates :user_id, presence: true
  validates :resort_id, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :price, presence: true

  def total_price
    self.price * self.duration
  end
end
