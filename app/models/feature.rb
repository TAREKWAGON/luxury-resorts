class Feature < ApplicationRecord
  has_many :feature_resort, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
