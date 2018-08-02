class FeatureResort < ApplicationRecord
  belongs_to :feature
  belongs_to :resort
  validates :feature_id, presence: true
  validates :resort_id, presence: true
end
