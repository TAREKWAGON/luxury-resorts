class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :resort
  validates :user_id, presence: true
  validates :resort_id, presence: true
end
