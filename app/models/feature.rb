class Feature < ApplicationRecord
  has_many :feature_resort
  validates :name, presence: true, uniqueness: true
end
